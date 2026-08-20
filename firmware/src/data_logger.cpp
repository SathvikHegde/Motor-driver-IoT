#include "data_logger.h"
#include <LittleFS.h>
#include <ArduinoJson.h>
#include <time.h>

bool DataLogger::begin() {
    if (!LittleFS.begin()) {
        Serial.println(F("[Logger] LittleFS mount failed, formatting..."));
        LittleFS.format();
        if (!LittleFS.begin()) {
            Serial.println(F("[Logger] LittleFS format failed!"));
            return false;
        }
    }

    _ensureLogDir();

    // Load saved config if it exists
    if (LittleFS.exists(CONFIG_FILE)) {
        File f = LittleFS.open(CONFIG_FILE, "r");
        if (f) {
            JsonDocument doc;
            DeserializationError err = deserializeJson(doc, f);
            f.close();
            if (!err && doc.containsKey("log_interval_seconds")) {
                _logIntervalMs = doc["log_interval_seconds"].as<unsigned long>() * 1000;
            }
        }
    }

    // Rotate old logs on startup
    rotateOldLogs();

    Serial.printf("[Logger] Initialized. Log interval: %lums\n", _logIntervalMs);
    return true;
}

void DataLogger::logEntry(float freq, float busV, float outV, float outI,
                           float outPower, uint16_t faultCode, bool isRunning) {
    String filename = _todayLogFile();
    File f = LittleFS.open(filename, "a");
    if (!f) {
        Serial.println(F("[Logger] Failed to open log file for writing"));
        return;
    }

    // CSV format: timestamp,freq,busV,outV,outI,power,fault,running
    // Using millis() as relative timestamp (no RTC on NodeMCU)
    // The app will use the sync time to calculate absolute timestamps
    unsigned long now = millis();
    char line[128];
    snprintf(line, sizeof(line), "%lu,%.2f,%.1f,%.1f,%.1f,%.1f,%u,%d\n",
             now, freq, busV, outV, outI, outPower, faultCode,
             isRunning ? 1 : 0);

    f.print(line);
    f.close();
}

void DataLogger::logFault(uint16_t faultCode) {
    // Only log if it's a new/different fault and not "no fault"
    if (faultCode == 0 || faultCode == _lastFaultCode) {
        if (faultCode == 0) _lastFaultCode = 0;
        return;
    }

    _lastFaultCode = faultCode;

    File f = LittleFS.open(FAULT_FILE, "a");
    if (!f) {
        Serial.println(F("[Logger] Failed to open fault file"));
        return;
    }

    unsigned long now = millis();
    char line[64];
    snprintf(line, sizeof(line), "%lu,%u\n", now, faultCode);
    f.print(line);
    f.close();

    Serial.printf("[Logger] Fault recorded: code %u\n", faultCode);
}

String DataLogger::getLogsJson(const String& fromISO, const String& toISO) {
    JsonDocument doc;
    JsonArray arr = doc.to<JsonArray>();

    // Get the boot time offset for timestamp calculation
    // Since we don't have RTC, we'll report millis and let the app
    // compute the real time based on current time - current millis + logged millis
    unsigned long currentMillis = millis();

    Dir dir = LittleFS.openDir(LOG_DIR);
    while (dir.next()) {
        File f = dir.openFile("r");
        if (!f) continue;

        while (f.available()) {
            String line = f.readStringUntil('\n');
            line.trim();
            if (line.length() == 0) continue;

            // Parse CSV: millis,freq,busV,outV,outI,power,fault,running
            int idx = 0;
            String fields[8];
            int start = 0;
            for (int i = 0; i <= (int)line.length() && idx < 8; i++) {
                if (i == (int)line.length() || line[i] == ',') {
                    fields[idx++] = line.substring(start, i);
                    start = i + 1;
                }
            }

            if (idx < 8) continue;

            unsigned long logMillis = fields[0].toInt();

            // Calculate approximate timestamp as ISO string
            // seconds_ago = (currentMillis - logMillis) / 1000
            unsigned long secondsAgo = (currentMillis - logMillis) / 1000;
            time_t now = time(nullptr);
            time_t logTime;
            if (now > 100000) {
                // If NTP time is available
                logTime = now - secondsAgo;
            } else {
                // Fallback: use boot-relative time
                logTime = secondsAgo;
            }

            char isoTime[32];
            struct tm* tm = localtime(&logTime);
            strftime(isoTime, sizeof(isoTime), "%Y-%m-%dT%H:%M:%S", tm);

            JsonObject entry = arr.add<JsonObject>();
            entry["timestamp"] = isoTime;
            entry["operation_frequency"] = fields[1].toFloat();
            entry["bus_voltage"] = fields[2].toFloat();
            entry["output_voltage"] = fields[3].toFloat();
            entry["output_current"] = fields[4].toFloat();
            entry["output_power"] = fields[5].toFloat();
            entry["fault_code"] = fields[6].toInt();
            entry["is_running"] = fields[7].toInt() == 1;
        }
        f.close();
    }

    String result;
    serializeJson(doc, result);
    return result;
}

String DataLogger::getFaultsJson() {
    JsonDocument doc;
    JsonArray arr = doc.to<JsonArray>();

    if (!LittleFS.exists(FAULT_FILE)) {
        String result;
        serializeJson(doc, result);
        return result;
    }

    unsigned long currentMillis = millis();
    File f = LittleFS.open(FAULT_FILE, "r");
    if (!f) {
        String result;
        serializeJson(doc, result);
        return result;
    }

    while (f.available()) {
        String line = f.readStringUntil('\n');
        line.trim();
        if (line.length() == 0) continue;

        int commaPos = line.indexOf(',');
        if (commaPos < 0) continue;

        unsigned long logMillis = line.substring(0, commaPos).toInt();
        uint16_t faultCode = line.substring(commaPos + 1).toInt();

        unsigned long secondsAgo = (currentMillis - logMillis) / 1000;
        time_t now = time(nullptr);
        time_t logTime;
        if (now > 100000) {
            logTime = now - secondsAgo;
        } else {
            logTime = secondsAgo;
        }

        char isoTime[32];
        struct tm* tm = localtime(&logTime);
        strftime(isoTime, sizeof(isoTime), "%Y-%m-%dT%H:%M:%S", tm);

        // Look up fault description
        const char* desc = "Unknown fault";
        switch (faultCode) {
            case 1:  desc = "IGBT U-phase overcurrent (OC1)"; break;
            case 2:  desc = "IGBT V-phase overcurrent (OC2)"; break;
            case 3:  desc = "IGBT W-phase overcurrent (OC3)"; break;
            case 4:  desc = "Acceleration overcurrent (OC4)"; break;
            case 5:  desc = "Deceleration overcurrent (OC5)"; break;
            case 6:  desc = "Constant speed overcurrent (OC6)"; break;
            case 7:  desc = "Acceleration overvoltage (OV1)"; break;
            case 8:  desc = "Deceleration overvoltage (OV2)"; break;
            case 9:  desc = "Constant speed overvoltage (OV3)"; break;
            case 10: desc = "Bus undervoltage (UV)"; break;
            case 11: desc = "Motor overload (OL1)"; break;
            case 12: desc = "VFD overload (OL2)"; break;
            case 13: desc = "Input phase loss (SPI)"; break;
            case 14: desc = "Output phase loss (SPO)"; break;
            case 15: desc = "VFD overheat (OH1)"; break;
            case 16: desc = "External fault (EF)"; break;
            case 17: desc = "Communication error (CE)"; break;
            case 18: desc = "Current detection error (ItE)"; break;
            case 19: desc = "Motor auto-tune error (tE)"; break;
            case 20: desc = "Encoder/PG error (PGE)"; break;
            case 21: desc = "Parameter read/write error (PCE)"; break;
            case 22: desc = "VFD hardware error (bCE)"; break;
            case 23: desc = "Motor short circuit to ground (SCE)"; break;
            case 26: desc = "Accumulative running time reached (END)"; break;
            case 27: desc = "User-defined fault 1 (FDE1)"; break;
            case 28: desc = "User-defined fault 2 (FDE2)"; break;
            case 29: desc = "Accumulative power on time reached"; break;
            case 30: desc = "Load lost"; break;
            case 31: desc = "PID feedback lost during running"; break;
        }

        JsonObject entry = arr.add<JsonObject>();
        entry["timestamp"] = isoTime;
        entry["fault_code"] = faultCode;
        entry["description"] = desc;
    }
    f.close();

    String result;
    serializeJson(doc, result);
    return result;
}

void DataLogger::clearAll() {
    Dir dir = LittleFS.openDir(LOG_DIR);
    while (dir.next()) {
        LittleFS.remove(String(LOG_DIR) + "/" + dir.fileName());
    }
    LittleFS.remove(FAULT_FILE);
    Serial.println(F("[Logger] All data cleared"));
}

void DataLogger::rotateOldLogs() {
    // Since we don't have RTC, we can't easily determine file age
    // from filenames. Instead, limit total file count.
    // Keep at most LOG_MAX_AGE_DAYS files (one per day).
    const int maxFiles = LOG_MAX_AGE_DAYS;
    String files[32];
    int fileCount = 0;

    Dir dir = LittleFS.openDir(LOG_DIR);
    while (dir.next() && fileCount < 32) {
        files[fileCount++] = dir.fileName();
    }

    // Sort filenames (they contain dates, so alphabetical = chronological)
    for (int i = 0; i < fileCount - 1; i++) {
        for (int j = i + 1; j < fileCount; j++) {
            if (files[i] > files[j]) {
                String tmp = files[i];
                files[i] = files[j];
                files[j] = tmp;
            }
        }
    }

    // Delete oldest files if we exceed the limit
    int toDelete = fileCount - maxFiles;
    for (int i = 0; i < toDelete; i++) {
        String path = String(LOG_DIR) + "/" + files[i];
        LittleFS.remove(path);
        Serial.printf("[Logger] Rotated old log: %s\n", path.c_str());
    }
}

String DataLogger::getConfigJson() {
    JsonDocument doc;
    doc["log_interval_seconds"] = _logIntervalMs / 1000;
    doc["wifi_ssid"] = WIFI_AP_SSID;

    String result;
    serializeJson(doc, result);
    return result;
}

bool DataLogger::updateConfig(const String& json) {
    JsonDocument doc;
    DeserializationError err = deserializeJson(doc, json);
    if (err) return false;

    if (doc.containsKey("log_interval_seconds")) {
        _logIntervalMs = doc["log_interval_seconds"].as<unsigned long>() * 1000;
    }

    // Save to file
    File f = LittleFS.open(CONFIG_FILE, "w");
    if (!f) return false;

    JsonDocument saveDoc;
    saveDoc["log_interval_seconds"] = _logIntervalMs / 1000;
    serializeJson(saveDoc, f);
    f.close();

    Serial.printf("[Logger] Config updated. Log interval: %lums\n", _logIntervalMs);
    return true;
}

String DataLogger::_todayLogFile() {
    // Generate a filename based on uptime day (since we don't have RTC)
    // Each "day" is approximately 86400000ms of uptime
    unsigned long day = millis() / 86400000UL;
    char filename[32];
    snprintf(filename, sizeof(filename), "%s/log_%05lu.csv", LOG_DIR, day);
    return String(filename);
}

unsigned long DataLogger::_parseISO(const String& iso) {
    // Simple ISO 8601 parser (YYYY-MM-DDTHH:MM:SS)
    if (iso.length() < 19) return 0;

    struct tm t;
    memset(&t, 0, sizeof(t));
    t.tm_year = iso.substring(0, 4).toInt() - 1900;
    t.tm_mon  = iso.substring(5, 7).toInt() - 1;
    t.tm_mday = iso.substring(8, 10).toInt();
    t.tm_hour = iso.substring(11, 13).toInt();
    t.tm_min  = iso.substring(14, 16).toInt();
    t.tm_sec  = iso.substring(17, 19).toInt();

    return mktime(&t);
}

void DataLogger::_ensureLogDir() {
    if (!LittleFS.exists(LOG_DIR)) {
        LittleFS.mkdir(LOG_DIR);
    }
}

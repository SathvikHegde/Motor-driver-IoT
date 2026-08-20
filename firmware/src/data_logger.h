#pragma once
#include <Arduino.h>
#include "config.h"

/// Manages log file storage on LittleFS.
/// Stores VFD monitoring data as CSV files (one per day) and fault history.
class DataLogger {
public:
    /// Initialize LittleFS and create directories.
    bool begin();

    /// Append a log entry for the current VFD state.
    void logEntry(float freq, float busV, float outV, float outI,
                  float outPower, uint16_t faultCode, bool isRunning);

    /// Record a new fault event (only if it's a new fault).
    void logFault(uint16_t faultCode);

    /// Get logs as a JSON array string, optionally filtered by time range.
    /// Caller is responsible for freeing the returned string.
    String getLogsJson(const String& fromISO = "", const String& toISO = "");

    /// Get fault history as a JSON array string.
    String getFaultsJson();

    /// Delete all log files and fault history.
    void clearAll();

    /// Delete log files older than LOG_MAX_AGE_DAYS.
    void rotateOldLogs();

    /// Get current config as JSON.
    String getConfigJson();

    /// Update config from JSON. Returns true on success.
    bool updateConfig(const String& json);

    /// Get the configured log interval in milliseconds.
    unsigned long getLogIntervalMs() { return _logIntervalMs; }

private:
    unsigned long _logIntervalMs = LOG_INTERVAL_MS;
    uint16_t _lastFaultCode = 0;

    /// Get today's log filename, e.g. "/logs/log_20260820.csv"
    String _todayLogFile();

    /// Parse an ISO timestamp to epoch seconds.
    unsigned long _parseISO(const String& iso);

    /// Ensure the logs directory exists.
    void _ensureLogDir();
};

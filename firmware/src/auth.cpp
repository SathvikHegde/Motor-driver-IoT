#include "auth.h"
#include <LittleFS.h>
#include <ArduinoJson.h>

void Auth::begin() {
    // Try to load saved PIN from config
    if (LittleFS.exists("/auth.json")) {
        File f = LittleFS.open("/auth.json", "r");
        if (f) {
            JsonDocument doc;
            DeserializationError err = deserializeJson(doc, f);
            f.close();
            if (!err && doc["pin"].is<String>()) {
                _pin = doc["pin"].as<String>();
            }
        }
    }

    Serial.println(F("[Auth] Initialized"));
}

bool Auth::validatePin(const String& pin) {
    return pin == _pin;
}

String Auth::createSession() {
    _activeToken = _generateToken();
    Serial.printf("[Auth] New session: %s\n", _activeToken.c_str());
    return _activeToken;
}

bool Auth::isValidSession(const String& token) {
    if (_activeToken.length() == 0) return false;
    return token == _activeToken;
}

bool Auth::changePin(const String& oldPin, const String& newPin) {
    if (oldPin != _pin) return false;
    if (newPin.length() < 4 || newPin.length() > 8) return false;

    _pin = newPin;

    // Save to file
    File f = LittleFS.open("/auth.json", "w");
    if (f) {
        JsonDocument doc;
        doc["pin"] = _pin;
        serializeJson(doc, f);
        f.close();
    }

    Serial.println(F("[Auth] PIN changed"));
    return true;
}

String Auth::_generateToken() {
    String token;
    token.reserve(TOKEN_LENGTH);
    const char hex[] = "0123456789abcdef";
    for (int i = 0; i < TOKEN_LENGTH; i++) {
        token += hex[random(16)];
    }
    return token;
}

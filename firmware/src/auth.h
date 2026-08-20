#pragma once
#include <Arduino.h>
#include "config.h"

/// Simple PIN-based authentication with session tokens.
class Auth {
public:
    /// Initialize (loads PIN hash from config if saved).
    void begin();

    /// Validate a PIN attempt. Returns true if correct.
    bool validatePin(const String& pin);

    /// Generate a new session token. Returns the token string.
    String createSession();

    /// Check if a request token is valid.
    bool isValidSession(const String& token);

    /// Change the PIN. Returns true on success.
    bool changePin(const String& oldPin, const String& newPin);

    /// Get the current active token (empty if no session).
    const String& getToken() { return _activeToken; }

private:
    String _pin = DEFAULT_PIN;
    String _activeToken;

    /// Generate a random hex string of TOKEN_LENGTH chars.
    String _generateToken();
};

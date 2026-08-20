#pragma once
#include <Arduino.h>
#include <ESPAsyncWebServer.h>
#include "modbus_driver.h"
#include "data_logger.h"
#include "auth.h"
#include "config.h"

/// HTTP REST API server running on the NodeMCU.
/// Provides endpoints for the Flutter app to interact with the VFD.
class WebServer {
public:
    WebServer(ModbusDriver& modbus, DataLogger& logger, Auth& auth);

    /// Start the HTTP server.
    void begin();

    /// Update the cached VFD status (called from main loop).
    void updateStatus(const VFDStatus& status);

private:
    AsyncWebServer _server;
    ModbusDriver& _modbus;
    DataLogger& _logger;
    Auth& _auth;
    VFDStatus _cachedStatus;

    /// Set up all route handlers.
    void _setupRoutes();

    /// Check authentication for a request. Returns true if valid.
    bool _checkAuth(AsyncWebServerRequest* request);

    /// Send a JSON error response.
    void _sendError(AsyncWebServerRequest* request, int code,
                    const String& message);

    /// Add CORS headers to a response.
    void _addCorsHeaders(AsyncWebServerResponse* response);
};

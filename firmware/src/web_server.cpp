#include "web_server.h"
#include <ArduinoJson.h>

WebServer::WebServer(ModbusDriver& modbus, DataLogger& logger, Auth& auth)
    : _server(HTTP_PORT), _modbus(modbus), _logger(logger), _auth(auth) {
    memset(&_cachedStatus, 0, sizeof(_cachedStatus));
}

void WebServer::begin() {
    _setupRoutes();
    _server.begin();
    Serial.printf("[WebServer] Started on port %d\n", HTTP_PORT);
}

void WebServer::updateStatus(const VFDStatus& status) {
    _cachedStatus = status;
}

void WebServer::_setupRoutes() {

    // ── CORS preflight handler ──
    _server.onNotFound([this](AsyncWebServerRequest* request) {
        if (request->method() == HTTP_OPTIONS) {
            AsyncWebServerResponse* response =
                request->beginResponse(204);
            _addCorsHeaders(response);
            request->send(response);
        } else {
            _sendError(request, 404, "Not found");
        }
    });

    // ── GET /api/auth?pin=XXXX ──
    _server.on("/api/auth", HTTP_GET,
        [this](AsyncWebServerRequest* request) {
            if (!request->hasParam("pin")) {
                _sendError(request, 400, "Missing pin parameter");
                return;
            }

            String pin = request->getParam("pin")->value();

            if (_auth.validatePin(pin)) {
                String token = _auth.createSession();

                JsonDocument doc;
                doc["success"] = true;
                doc["token"] = token;

                String json;
                serializeJson(doc, json);

                AsyncWebServerResponse* response =
                    request->beginResponse(200, "application/json", json);
                _addCorsHeaders(response);
                request->send(response);
            } else {
                JsonDocument doc;
                doc["success"] = false;
                doc["error"] = "Invalid PIN";

                String json;
                serializeJson(doc, json);

                AsyncWebServerResponse* response =
                    request->beginResponse(401, "application/json", json);
                _addCorsHeaders(response);
                request->send(response);
            }
        });

    // ── GET /api/status ──
    _server.on("/api/status", HTTP_GET,
        [this](AsyncWebServerRequest* request) {
            if (!_checkAuth(request)) return;

            JsonDocument doc;
            doc["is_running"] = _cachedStatus.isRunning;
            doc["operation_frequency"] = _cachedStatus.operationFrequency;
            doc["bus_voltage"] = _cachedStatus.busVoltage;
            doc["output_voltage"] = _cachedStatus.outputVoltage;
            doc["output_current"] = _cachedStatus.outputCurrent;
            doc["output_power"] = _cachedStatus.outputPower;
            doc["fault_code"] = _cachedStatus.faultCode;
            doc["comm_ok"] = _cachedStatus.commOk;

            // Build ISO timestamp
            char isoTime[32];
            time_t now = time(nullptr);
            struct tm* tm = localtime(&now);
            strftime(isoTime, sizeof(isoTime), "%Y-%m-%dT%H:%M:%S", tm);
            doc["timestamp"] = isoTime;

            String json;
            serializeJson(doc, json);

            AsyncWebServerResponse* response =
                request->beginResponse(200, "application/json", json);
            _addCorsHeaders(response);
            request->send(response);
        });

    // ── POST /api/command ──
    // Body: {"action": "start"} or {"action": "stop"}
    _server.addHandler(new AsyncCallbackJsonWebHandler("/api/command",
        [this](AsyncWebServerRequest* request, JsonVariant& jsonBody) {
            if (!_checkAuth(request)) return;

            JsonObject body = jsonBody.as<JsonObject>();
            if (!body.containsKey("action")) {
                _sendError(request, 400, "Missing action");
                return;
            }

            String action = body["action"].as<String>();
            bool success = false;

            if (action == "start") {
                success = _modbus.startDrive();
            } else if (action == "stop") {
                success = _modbus.stopDrive();
            } else {
                _sendError(request, 400, "Unknown action: " + action);
                return;
            }

            JsonDocument doc;
            doc["success"] = success;
            doc["action"] = action;

            String json;
            serializeJson(doc, json);

            AsyncWebServerResponse* response = request->beginResponse(
                success ? 200 : 500, "application/json", json);
            _addCorsHeaders(response);
            request->send(response);
        }));

    // ── GET /api/logs ──
    _server.on("/api/logs", HTTP_GET,
        [this](AsyncWebServerRequest* request) {
            if (!_checkAuth(request)) return;

            String from = "";
            String to = "";
            if (request->hasParam("from")) {
                from = request->getParam("from")->value();
            }
            if (request->hasParam("to")) {
                to = request->getParam("to")->value();
            }

            String json = _logger.getLogsJson(from, to);

            AsyncWebServerResponse* response =
                request->beginResponse(200, "application/json", json);
            _addCorsHeaders(response);
            request->send(response);
        });

    // ── GET /api/faults ──
    _server.on("/api/faults", HTTP_GET,
        [this](AsyncWebServerRequest* request) {
            if (!_checkAuth(request)) return;

            String json = _logger.getFaultsJson();

            AsyncWebServerResponse* response =
                request->beginResponse(200, "application/json", json);
            _addCorsHeaders(response);
            request->send(response);
        });

    // ── GET /api/config ──
    _server.on("/api/config", HTTP_GET,
        [this](AsyncWebServerRequest* request) {
            if (!_checkAuth(request)) return;

            String json = _logger.getConfigJson();

            AsyncWebServerResponse* response =
                request->beginResponse(200, "application/json", json);
            _addCorsHeaders(response);
            request->send(response);
        });

    // ── POST /api/config ──
    _server.addHandler(new AsyncCallbackJsonWebHandler("/api/config",
        [this](AsyncWebServerRequest* request, JsonVariant& jsonBody) {
            if (!_checkAuth(request)) return;

            String json;
            serializeJson(jsonBody, json);
            bool success = _logger.updateConfig(json);

            JsonDocument doc;
            doc["success"] = success;

            String respJson;
            serializeJson(doc, respJson);

            AsyncWebServerResponse* response = request->beginResponse(
                success ? 200 : 400, "application/json", respJson);
            _addCorsHeaders(response);
            request->send(response);
        }));

    // ── DELETE /api/logs (clear all data) ──
    _server.on("/api/logs", HTTP_DELETE,
        [this](AsyncWebServerRequest* request) {
            if (!_checkAuth(request)) return;

            _logger.clearAll();

            AsyncWebServerResponse* response = request->beginResponse(
                200, "application/json", "{\"success\":true}");
            _addCorsHeaders(response);
            request->send(response);
        });
}

bool WebServer::_checkAuth(AsyncWebServerRequest* request) {
    // Check for Bearer token in Authorization header
    if (request->hasHeader("Authorization")) {
        String authHeader = request->header("Authorization");
        if (authHeader.startsWith("Bearer ")) {
            String token = authHeader.substring(7);
            if (_auth.isValidSession(token)) {
                return true;
            }
        }
    }

    // Check for token as query parameter (fallback for simple testing)
    if (request->hasParam("token")) {
        String token = request->getParam("token")->value();
        if (_auth.isValidSession(token)) {
            return true;
        }
    }

    _sendError(request, 401, "Unauthorized");
    return false;
}

void WebServer::_sendError(AsyncWebServerRequest* request, int code,
                            const String& message) {
    JsonDocument doc;
    doc["error"] = message;

    String json;
    serializeJson(doc, json);

    AsyncWebServerResponse* response =
        request->beginResponse(code, "application/json", json);
    _addCorsHeaders(response);
    request->send(response);
}

void WebServer::_addCorsHeaders(AsyncWebServerResponse* response) {
    response->addHeader("Access-Control-Allow-Origin", "*");
    response->addHeader("Access-Control-Allow-Methods",
                        "GET, POST, DELETE, OPTIONS");
    response->addHeader("Access-Control-Allow-Headers",
                        "Content-Type, Authorization");
}

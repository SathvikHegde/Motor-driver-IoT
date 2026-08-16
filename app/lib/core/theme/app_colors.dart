import 'package:flutter/material.dart';

/// Custom color palette for Drive Controller.
/// Dark industrial theme with teal accents.
class AppColors {
  AppColors._();

  // ── Primary Palette ──
  static const Color primary = Color(0xFF00BFA5);
  static const Color primaryLight = Color(0xFF5DF2D6);
  static const Color primaryDark = Color(0xFF008E76);
  static const Color onPrimary = Color(0xFF003731);

  // ── Surface / Background ──
  static const Color background = Color(0xFF0A0E14);
  static const Color surface = Color(0xFF131920);
  static const Color surfaceVariant = Color(0xFF1A2332);
  static const Color surfaceElevated = Color(0xFF1F2937);
  static const Color surfaceBright = Color(0xFF283548);

  // ── Text ──
  static const Color textPrimary = Color(0xFFE8ECF1);
  static const Color textSecondary = Color(0xFF9CA3AF);
  static const Color textTertiary = Color(0xFF6B7280);

  // ── Status ──
  static const Color success = Color(0xFF22C55E);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF3B82F6);

  // ── Motor State ──
  static const Color motorRunning = Color(0xFF22C55E);
  static const Color motorStopped = Color(0xFF6B7280);
  static const Color motorFault = Color(0xFFEF4444);

  // ── Gauge Colors ──
  static const Color gaugeFrequency = Color(0xFF00BFA5);
  static const Color gaugeVoltage = Color(0xFF3B82F6);
  static const Color gaugeCurrent = Color(0xFFF59E0B);
  static const Color gaugePower = Color(0xFF8B5CF6);
  static const Color gaugeBusVoltage = Color(0xFFEC4899);

  // ── Chart Colors ──
  static const Color chartLine1 = Color(0xFF00BFA5);
  static const Color chartLine2 = Color(0xFF3B82F6);
  static const Color chartLine3 = Color(0xFFF59E0B);
  static const Color chartLine4 = Color(0xFF8B5CF6);
  static const Color chartLine5 = Color(0xFFEC4899);

  // ── Divider / Border ──
  static const Color divider = Color(0xFF1F2937);
  static const Color border = Color(0xFF374151);

  // ── Connection ──
  static const Color connected = Color(0xFF22C55E);
  static const Color disconnected = Color(0xFFEF4444);
  static const Color connecting = Color(0xFFF59E0B);
}

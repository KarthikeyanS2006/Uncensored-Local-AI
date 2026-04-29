import 'package:flutter/material.dart';

extension ThemeExt on BuildContext {
  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  Color get bg => Theme.of(this).scaffoldBackgroundColor;
  Color get bgSidebar =>
      isDark ? AppColors.darkBgSidebar : AppColors.lightBgSidebar;
  Color get bgPanel => Theme.of(this).colorScheme.surface;
  Color get bgInput => isDark ? AppColors.darkBgInput : AppColors.lightBgInput;
  Color get bgMsgAi => isDark ? AppColors.darkBgMsgAi : AppColors.lightBgMsgAi;
  Color get bgHover => isDark ? AppColors.darkBgHover : AppColors.lightBgHover;
  Color get border => Theme.of(this).dividerColor;
  Color get borderFaint =>
      isDark ? AppColors.darkBorderFaint : AppColors.lightBorderFaint;

  Color get text => isDark ? AppColors.darkText : AppColors.lightText;
  Color get textM => isDark ? AppColors.darkTextM : AppColors.lightTextM;
  Color get textD => isDark ? AppColors.darkTextD : AppColors.lightTextD;
}

/// Design tokens ported 1:1 from FastChatUI.html :root CSS variables.
class AppColors {
  AppColors._();

  // ── Common Colors ──────────────────────────────────────────────
  static const accent = Color(0xFF6366F1);
  static const accentDim = Color(0xFF4F46E5);
  static const accentHi = Color(0xFF818CF8);
  static const green = Color(0xFF3FB950);
  static const red = Color(0xFFF85149);
  static const orange = Color(0xFFE3B341);

  // ── Dark Theme Colors ──────────────────────────────────────────
  static const darkBg = Color(0xFF0D1117); // Dark gray
  static const darkBgSidebar = Color(0xFF0D1117);
  static const darkBgPanel = Color(0xFF161B22);
  static const darkBgInput = Color(0xFF1C2128);
  static const darkBgMsgAi = Color(0xFF161B22);
  static const darkBgHover = Color(0xFF1C2128);
  static const darkBorder = Color(0xFF30363D);
  static const darkBorderFaint = Color(0xFF21262D);
  static const darkText = Color(0xFFE6EDF3);
  static const darkTextM = Color(0xFF8B949E);
  static const darkTextD = Color(0xFF484F58);

  // ── Light Theme Colors ─────────────────────────────────────────
  static const lightBg = Color(0xFFFFFFFF);
  static const lightBgSidebar = Color(
    0xFFF7F7F8,
  ); // Very light gray like ChatGPT/Claude
  static const lightBgPanel = Color(0xFFF7F7F8);
  static const lightBgInput = Color(0xFFFFFFFF);
  static const lightBgMsgAi = Color(0xFFF7F7F8);
  static const lightBgHover = Color(0xFFE5E7EB);
  static const lightBorder = Color(0xFFE5E7EB); // Soft borders
  static const lightBorderFaint = Color(0xFFF3F4F6);
  static const lightText = Color(0xFF0F172A); // Dark slate
  static const lightTextM = Color(0xFF475569);
  static const lightTextD = Color(0xFF94A3B8);

  // ── Label colours ────────────────────────────────────────────
  static const uncensored = Color(0xFFEF4444);
  static const standard = Color(0xFF06B6D4);
  static const custom = Color(0xFF22C55E);

  // ── Performance Mode Colors ────────────────────────────────
  static const perfMode = Color(0xFF10B981);
  static const perfModeBg = Color(0xFF10B981);

  // ── Gradients ────────────────────────────────────────────────
  static const accentGradient = LinearGradient(
    colors: [accent, Color(0xFF8B5CF6)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

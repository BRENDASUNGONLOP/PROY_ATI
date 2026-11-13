import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF1E513A),
      primary: const Color(0xFF1E513A),
      secondary: const Color(0xFF831030),
      surface: const Color(0xFFF4F6F4),
    ),
  );
}

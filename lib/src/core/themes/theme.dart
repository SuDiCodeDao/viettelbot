import 'package:flutter/material.dart';
import 'package:viettelbot/src/core/themes/widgets_theme/text_theme.dart';

class VAppTheme {
  VAppTheme._();

  static ThemeData lightTheme = ThemeData(
      primaryColor: Colors.red,
      brightness: Brightness.light,
      textTheme: VTextTheme.lightTextTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(),
      ),
      colorScheme: const ColorScheme.light(background: Colors.white));
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: VTextTheme.darkTextTheme,
      colorScheme: const ColorScheme.dark(background: Colors.black));
}

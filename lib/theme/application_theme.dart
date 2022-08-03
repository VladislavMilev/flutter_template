import 'package:flutter/material.dart';
import 'package:movies/theme/application_colors.dart';

class ApplicationTheme {
  static MaterialColor generateMaterialColor(Color color) {
    return MaterialColor(color.value, {
      50: Color.fromRGBO(color.red, color.green, color.blue, 0.1),
      100: Color.fromRGBO(color.red, color.green, color.blue, 0.2),
      200: Color.fromRGBO(color.red, color.green, color.blue, 0.3),
      300: Color.fromRGBO(color.red, color.green, color.blue, 0.4),
      400: Color.fromRGBO(color.red, color.green, color.blue, 0.5),
      500: Color.fromRGBO(color.red, color.green, color.blue, 0.6),
      600: Color.fromRGBO(color.red, color.green, color.blue, 0.7),
      700: Color.fromRGBO(color.red, color.green, color.blue, 0.8),
      800: Color.fromRGBO(color.red, color.green, color.blue, 0.9),
      900: Color.fromRGBO(color.red, color.green, color.blue, 1.0),
    });
  }

  ThemeData dark() {
    return ThemeData(
      backgroundColor: AppColor.primary,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.primary,
          foregroundColor: Color(0xff000000)),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: generateMaterialColor(AppColor.primary),
        accentColor: AppColor.primary,
        primaryColorDark: Colors.blue,
        cardColor: Colors.cyan,
        backgroundColor: Colors.green,
        brightness: Brightness.light,
      ),
    );
  }

  ThemeData light() {
    return ThemeData(
      backgroundColor: AppColor.primary,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.primary,
          foregroundColor: Color(0xff000000)),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: generateMaterialColor(AppColor.primary),
        accentColor: AppColor.primary,
        primaryColorDark: Colors.blue,
        cardColor: Colors.cyan,
        backgroundColor: Colors.green,
        brightness: Brightness.light,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AppColors extends ColorSwatch<int> {
  const AppColors(int primary, Map<int, Color> swatch) : super(primary, swatch);

  Color get shade100 => this[100]!;

  Color get shade90 => this[90]!;

  Color get shade80 => this[80]!;

  Color get shade70 => this[70]!;

  Color get shade60 => this[60]!;

  Color get shade50 => this[50]!;

  Color get shade40 => this[40]!;

  Color get shade30 => this[30]!;

  Color get shade20 => this[20]!;

  Color get shade10 => this[10]!;

  Color get shade05 => this[05]!;

  static const Color white = Color(0xFFFFFFFF);
  static const Color almostWhite = Colors.white70;
  static const Color black = Color(0xFF000000);
  static const Color separator = Color(0xFFC4C4C4);
  static const Color backgroundColor = Color(0xFF243657);
  static const Color cardColor = Color(0xFF33415E);
  // static const Color backgroundColor = Color(0xFFefeff1);
  static const Color customBlack = Color(0xFF2C2C2C);
  static const Color semiBlack = Color(0x802C2C2C);
  static const Color appBlue = Color(0xFF61AAFF);

  /// Default shade is: shade50
  static const AppColors primary = AppColors(
    0xFF373535,
    <int, Color>{
      100: Color(0xFF1c1b1b),
      90: Color(0xFF212020),
      80: Color(0xFF272525),
      70: Color(0xFF2c2a2a),
      60: Color(0xFF323030),
      50: Color(0xFF373535),
      40: Color(0xFF4b4949),
      30: Color(0xFF5f5d5d),
      20: Color(0xFF737272),
      10: Color(0xFF878686),
      05: Color(0xFF9b9a9a),
    },
  );

  /// Default shade is: shade50
  static const AppColors secondary = AppColors(
    0xFF61aaff,
    <int, Color>{
      100: Color(0xFF315580),
      90: Color(0xFF3a6699),
      80: Color(0xFF4477b3),
      70: Color(0xFF4e88cc),
      60: Color(0xFF5799e6),
      50: Color(0xFF61aaff),
      40: Color(0xFF71b3ff),
      30: Color(0xFF81bbff),
      20: Color(0xFF90c4ff),
      10: Color(0xFFa0ccff),
      05: Color(0xFFb0d5ff),
    },
  );

  /// Default shade is: shade50
  static const AppColors neutral = AppColors(
    0xFFAAB6B9,
    <int, Color>{
      100: Color(0xFF252B2D),
      90: Color(0xFF384144),
      80: Color(0xFF606E74),
      70: Color(0xFF7A8C93),
      60: Color(0xFF94A2A7),
      50: Color(0xFFAAB6B9),
      40: Color(0xFFBCC6C9),
      30: Color(0xFFCDD4D7),
      20: Color(0xFFDDE2E3),
      10: Color(0xFFECEEEF),
      05: Color(0xFFF3F7F7),
    },
  );

  /// Default shade is: shade50
  static const AppColors error = AppColors(
    0xFFc33333,
    <int, Color>{
      100: Color(0xFF310202),
      90: Color(0xFF411111),
      80: Color(0xFF511515),
      70: Color(0xFF7a1f1f),
      60: Color(0xFFa22a2a),
      50: Color(0xFFc33333),
      40: Color(0xFFd55d5d),
      30: Color(0xFFdf8585),
      20: Color(0xFFeaaeae),
      10: Color(0xFFf4d6d6),
      05: Color(0xFFfaebeb),
    },
  );

  /// Default shade is: shade50
  static const AppColors warning = AppColors(
    0xFFFDD00C,
    <int, Color>{
      90: Color(0xFF403711),
      80: Color(0xFF524715),
      70: Color(0xFF7a691f),
      60: Color(0xFFa38d2a),
      50: Color(0xFFFDD00C),
      40: Color(0xFFd6c05e),
      30: Color(0xFFdece85),
      20: Color(0xFFebdfae),
      10: Color(0xFFf5efd7),
      05: Color(0xFFfaf7eb),
    },
  );
}

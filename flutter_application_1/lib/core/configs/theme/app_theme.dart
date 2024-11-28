import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/configs/theme/app_colors.dart';

class AppTheme {
  static final lighTheme = ThemeData(
      fontFamily: 'PlusJakartaSans',
      scaffoldBackgroundColor: AppColors.white,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.redButton,
              textStyle: TextStyle(fontSize: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)))));
}

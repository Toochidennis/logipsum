import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static TextStyle textStyle400({
    double? fontSize = 12,
    Color? color = AppColors.titleColor,
    String? fontFamily = 'Inter',
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w400,
      fontFamily: fontFamily,
    );
  }

  static TextStyle textStyle500({
    double? fontSize = 12,
    Color? color = AppColors.titleColor,
    String? fontFamily = 'Inter',
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w500,
      fontFamily: fontFamily,
    );
  }

  static TextStyle textStyle600({
    double? fontSize = 12,
    Color? color = AppColors.titleColor,
    String? fontFamily = 'Inter',
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w600,
      fontFamily: fontFamily,
    );
  }

  static TextStyle textStyle700({
    double? fontSize = 12,
    Color? color = AppColors.titleColor,
    String? fontFamily = 'Inter',
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w700,
      fontFamily: fontFamily,
    );
  }
}

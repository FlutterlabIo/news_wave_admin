import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant/app_sizes.dart';
import 'app_colors.dart';

class AppTextStyle {
  static TextStyle headline2() {
    return GoogleFonts.outfit(
      textStyle:  TextStyle(
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontSize: AppSizes.fontSize24,
      ),
    );
  }
  static TextStyle buttonText() {
    return GoogleFonts.outfit(
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: AppColors.white,
        fontSize: AppSizes.fontSize18,
      ),
    );
  }
  static TextStyle headline3() {
    return GoogleFonts.outfit(
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: AppColors.black,
        fontSize: AppSizes.fontSize26,
      ),
    );
  }
  static TextStyle headline4() {
    return GoogleFonts.outfit(
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: AppColors.black,
        fontSize: AppSizes.fontSize14,
      ),
    );
  }
  static TextStyle headline5() {
    return GoogleFonts.outfit(
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: AppColors.black,
        fontSize: AppSizes.fontSize22,
      ),
    );
  }
  static TextStyle bodyText1() {
    return GoogleFonts.outfit(
      textStyle: TextStyle(
        fontWeight: FontWeight.w400,
        color: AppColors.black.withOpacity(AppSizes.opacity5),
        fontSize: AppSizes.fontSize22,
      ),
    );
  }
  static TextStyle bodyText2() {
    return GoogleFonts.outfit(
      textStyle: TextStyle(
        fontWeight: FontWeight.w400,
        color: AppColors.black.withOpacity(AppSizes.opacity5),
        fontSize: AppSizes.fontSize18,
      ),
    );
  }
  static TextStyle bodyText4() {
    return GoogleFonts.outfit(
      textStyle: TextStyle(
        fontWeight: FontWeight.w400,
        color: AppColors.black.withOpacity(AppSizes.opacity5),
        fontSize: AppSizes.fontSize14,
      ),
    );
  }
}

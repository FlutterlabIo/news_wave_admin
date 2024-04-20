
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_wave_admin/core/util/text_style.dart';

import 'app_colors.dart';
import 'button_style.dart';
class CustomButtons {
  CustomButtons._();

  static Widget fill({
    required String name,
    Function? onPressed,
    Color? color,
    Color? textColor,
    double? height,
    double? radius,
    double? width,
    double? fontSize,
  }) {
    return ElevatedButton(
      onPressed: () {
        if (onPressed != null) {
          onPressed();
        }
      },
      style: AppButtonStyles.flat,
      child: Container(
        width: width,
        height: height??46.h,
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
        decoration: BoxDecoration(
          color: color ?? AppColors.blue,
          borderRadius: BorderRadius.circular(
            radius ?? 12.r,
          ),
        ),
        child: Center(
          child: Text(
            name,
            style: AppTextStyle.buttonText().copyWith(
                color: textColor, fontSize: fontSize,),
          ),
        ),
      ),
    );
  }
}

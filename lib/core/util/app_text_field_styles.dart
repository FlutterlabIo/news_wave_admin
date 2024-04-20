import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_wave_admin/core/util/text_style.dart';

import '../constant/app_sizes.dart';
import 'app_colors.dart';
import 'custom_text_field.dart';

class AppTextFieldStyle {
  AppTextFieldStyle._();

  static Widget authNormal({
    required String hint,
    CustomTextFieldController? controller,
    Color? backgroundColor,
    Color? hintColor,
    Widget? preFixIcon,
    EdgeInsetsGeometry? padding,
    double? verticalPadding,
    int? maxLength,
    Function(String value)? onChange,
    Function(String value)? onSubmitted,
    TextInputType keyboardType = TextInputType.text,
    bool autocorrect = true,
    bool enableSuggestions = true,
    FieldType fieldType = FieldType.normal,
  }) {
    return Padding(
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: AppSizes.width0,
          ),
      child: CustomTextField(
        autofocus: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(AppSizes.width15),
          hintText: hint,
          hintStyle: TextStyle(
              color: AppColors.black.withOpacity(AppSizes.opacity5),
              fontSize: AppSizes.fontSize16),
          prefixStyle: const TextStyle(
            height: 20,
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(
                left: AppSizes.width20,
                right: AppSizes.width10,
                top: AppSizes.width4),
            child: preFixIcon,
          ),
          prefixIconColor: AppColors.black,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizes.radius8),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizes.radius8),
            borderSide: BorderSide.none,
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding ?? 0.h,
          horizontal: AppSizes.width10,
        ),
        controller: controller ?? CustomTextFieldController(),
        borderRadiusAll: AppSizes.radius8,
        backgroundColor:
            backgroundColor ?? AppColors.black.withOpacity(AppSizes.opacity05),
        keyboardType: keyboardType,
        autocorrect: autocorrect,
        fieldType: fieldType,
        enableSuggestions: enableSuggestions,
        cursorColor: AppColors.black,
        textStyle: AppTextStyle.bodyText1()
            .copyWith(color: AppColors.black, fontSize: AppSizes.fontSize18),
        errorTextStyle: AppTextStyle.bodyText1().copyWith(
          color: AppColors.white,
        ),
        showErrorBorder: false,
        maxLines: 1,
        //maxLength: maxLength ?? 10,
        onChanged: onChange,
        onSubmitted: onSubmitted,
      ),
    );
  }

  static Widget authPass({
    CustomTextFieldController? controller,
    Color? backgroundColor,
    Color? hintColor,
    Icon? prefixIcon,
    EdgeInsetsGeometry? padding,
    double? verticalPadding,
    required String hint,
    Function(String value)? onChange,
    Function(String value)? onSubmitted,
    TextInputType keyboardType = TextInputType.text,
    bool autocorrect = true,
    bool enableSuggestions = true,
    FieldType fieldType = FieldType.password,
  }) {
    return Padding(
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: AppSizes.width0,
          ),
      child: CustomTextField(
        autofocus: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(AppSizes.width15),
          hintText: hint,
          hintStyle: TextStyle(
              color: AppColors.black.withOpacity(AppSizes.opacity5),
              fontSize: AppSizes.fontSize16),
          prefixIcon: Padding(
            padding: EdgeInsets.only(
                left: AppSizes.width30,
                right: AppSizes.width20,
                top: AppSizes.width4),
            child: prefixIcon,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizes.radius8),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSizes.radius8),
            borderSide: BorderSide.none,
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding ?? 0.h,
          horizontal: AppSizes.width0,
        ),
        controller: controller ?? CustomTextFieldController(),
        backgroundColor:
            backgroundColor ?? AppColors.black.withOpacity(AppSizes.opacity05),
        borderRadiusAll: AppSizes.radius8,
        keyboardType: keyboardType,
        autocorrect: autocorrect,
        fieldType: fieldType,
        enableSuggestions: enableSuggestions,
        cursorColor: AppColors.black,
        textStyle: AppTextStyle.bodyText1()
            .copyWith(color: AppColors.black, fontSize: AppSizes.fontSize18),
        errorTextStyle: AppTextStyle.bodyText1().copyWith(
          color: AppColors.white,
        ),
        showErrorBorder: false,
        maxLines: 1,
        onChanged: onChange,
        onSubmitted: onSubmitted,
      ),
    );
  }

  static Widget searchProduct(
      {required String hint,
      CustomTextFieldController? controller,
      Color? backgroundColor,
      Color? hintColor,
      Widget? preFixIcon,
      Widget? suffixIcon,
      EdgeInsetsGeometry? padding,
      double? verticalPadding,
      Function(String value)? onChange,
      Function(String value)? onSubmitted,
      TextInputType keyboardType = TextInputType.text,
      bool autocorrect = true,
      bool enableSuggestions = true,
      bool isEnable = true,
      bool isAutoFocus = false,
      FieldType fieldType = FieldType.normal}) {
    return Padding(
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: AppSizes.width0,
          ),
      child: CustomTextField(
        textInputAction: TextInputAction.search,
        textAlign: TextAlign.start,
        autofocus: isAutoFocus,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(AppSizes.width15),
          prefixIcon: preFixIcon,
          suffixIcon: suffixIcon,
          suffixIconColor: AppColors.grey,
          prefixIconColor: AppColors.grey,
          hintText: hint,
          hintStyle: TextStyle(color: hintColor),
          enabledBorder: InputBorder.none,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),

        //border: Border.all(width: 1, color: AppColors.grey.withOpacity(0.2)),

        controller: controller ?? CustomTextFieldController(),
        backgroundColor: backgroundColor ??
            AppColors.black.withOpacity(AppSizes.opacity05),
        borderRadiusAll: AppSizes.radius8,
        keyboardType: keyboardType,
        autocorrect: autocorrect,
        fieldType: fieldType,
        enableSuggestions: enableSuggestions,
        cursorColor: AppColors.grey,
        textStyle: AppTextStyle.bodyText1().copyWith(
            color: AppColors.grey, fontSize: AppSizes.fontSize18),
        errorTextStyle: AppTextStyle.bodyText1().copyWith(
          color: AppColors.grey,
        ),
        showErrorBorder: false,
        maxLines: 1,
        onChanged: onChange,
        onSubmitted: onSubmitted,
        isEnabled: isEnable,
      ),
    );
  }
}

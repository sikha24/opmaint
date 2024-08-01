import 'package:flutter/material.dart';
import 'package:opmaint_assignment/core/utils/constants/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ApplicationTheme {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundPrimary,
      iconTheme: IconThemeData(color: AppColors.lightGrey, size: 20.sp),
      dividerTheme:
          DividerThemeData(thickness: 1.2, color: AppColors.dividerPrimary),
      checkboxTheme: CheckboxThemeData(
          side: BorderSide.none,
          checkColor: WidgetStateProperty.all(Colors.white),
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return AppColors.deepOrange;
            } else {
              return AppColors.lightSolid;
            }
          })),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
              fontFamily: 'Roboto',
              color: AppColors.txtPrimary,
              fontWeight: FontWeight.w500,
              fontSize: 18.sp),
          backgroundColor: AppColors.backgroundPrimary,
          iconTheme: IconThemeData(color: AppColors.txtWhite, size: 4.h)),
      textTheme: TextTheme(
          displayLarge: TextStyle(
              fontSize: 22.sp,
              fontFamily: 'Roboto',
              color: AppColors.txtPrimary,
              fontWeight: FontWeight.w700),
          displayMedium: TextStyle(
              fontSize: 20.sp,
              fontFamily: 'Roboto',
              color: AppColors.txtPrimary,
              fontWeight: FontWeight.w700),
          displaySmall: TextStyle(
              fontSize: 18.sp,
              fontFamily: 'Roboto',
              color: AppColors.txtPrimary,
              fontWeight: FontWeight.w700),
          titleLarge: TextStyle(
              fontSize: 14.sp,
              fontFamily: 'Roboto',
              color: AppColors.txtPrimary,
              fontWeight: FontWeight.w500),
          titleMedium: TextStyle(
              fontSize: 12.sp,
              fontFamily: 'Roboto',
              color: AppColors.txtPrimary,
              fontWeight: FontWeight.w500),
          titleSmall: TextStyle(
              fontSize: 10.sp,
              fontFamily: 'Roboto',
              color: AppColors.txtPrimary,
              fontWeight: FontWeight.w500),
          bodyLarge: TextStyle(
              fontSize: 20.sp,
              fontFamily: 'Roboto',
              color: AppColors.txtPrimary,
              fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(
              fontSize: 18.sp,
              fontFamily: 'Roboto',
              color: AppColors.txtPrimary,
              fontWeight: FontWeight.w400),
          bodySmall: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'Roboto',
              color: AppColors.txtPrimary,
              fontWeight: FontWeight.w400),
          labelLarge: TextStyle(
              fontSize: 18.sp,
              fontFamily: 'Roboto',
              color: AppColors.txtSecondary,
              fontWeight: FontWeight.w400),
          labelMedium: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'Roboto',
              color: AppColors.txtSecondary,
              fontWeight: FontWeight.w400),
          labelSmall: TextStyle(
              fontSize: 14.sp,
              fontFamily: 'Roboto',
              color: AppColors.txtSecondary,
              fontWeight: FontWeight.w400)));
}

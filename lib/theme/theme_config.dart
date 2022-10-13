import 'package:demo_mvvm/theme/app_colors.dart';
import 'package:demo_mvvm/theme/app_dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeConfig {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Euclid Circular B',
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primary,
        onPrimary: AppColors.onPrimary,
        secondary: AppColors.secondary,
        onSecondary: AppColors.onSecondary,
        error: AppColors.error,
        onError: AppColors.onError,
        background: AppColors.background,
        onBackground: AppColors.onBackground,
        surface: AppColors.surface,
        onSurface: AppColors.onSurface),
    iconTheme: const IconThemeData(color: AppColors.onBackground),
    appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.transparent),
        iconTheme: IconThemeData(color: AppColors.onBackground)),
    textTheme: TextTheme(
      headline1: TextStyle(
          fontSize: AppDimens.fsH1,
          height: AppDimens.lh_160,
          fontWeight: FontWeight.w600,
          color: AppColors.onBackground),
      headline2: TextStyle(
          fontSize: AppDimens.fsH2,
          height: AppDimens.lh_160,
          fontWeight: FontWeight.w400,
          color: AppColors.onBackground),
      headline3: TextStyle(
          fontSize: AppDimens.fsH3,
          height: AppDimens.lh_160,
          fontWeight: FontWeight.w500,
          color: AppColors.onBackground),
      headline4: TextStyle(
          fontSize: AppDimens.fsH4,
          height: AppDimens.lh_160,
          fontWeight: FontWeight.w400,
          color: AppColors.onBackground),
      headline5: TextStyle(
          fontSize: AppDimens.fsH5,
          height: AppDimens.lh_160,
          fontWeight: FontWeight.w600,
          color: AppColors.onBackground),
      headline6: TextStyle(
          fontSize: AppDimens.fsH6,
          height: AppDimens.lh_160,
          fontWeight: FontWeight.w400,
          color: AppColors.onBackground),
      bodyText1: TextStyle(
          fontSize: AppDimens.fsBT1,
          height: AppDimens.lh_160,
          fontWeight: FontWeight.w400,
          color: AppColors.onBackground),
      bodyText2: TextStyle(
          fontSize: AppDimens.fsBT2,
          height: AppDimens.lh_160,
          fontWeight: FontWeight.w400,
          color: AppColors.onBackground),
      subtitle1: TextStyle(
          fontSize: AppDimens.fsST1,
          height: AppDimens.lh_160,
          fontWeight: FontWeight.w400,
          color: AppColors.onBackground),
      subtitle2: TextStyle(
          fontSize: AppDimens.fsST2,
          height: AppDimens.lh_160,
          fontWeight: FontWeight.w400,
          color: AppColors.onBackground),
      caption: TextStyle(
          fontSize: AppDimens.fsCT,
          height: AppDimens.lh_160,
          fontWeight: FontWeight.w400,
          color: AppColors.onBackground),
      overline: TextStyle(
          fontSize: AppDimens.fsOL,
          height: AppDimens.lh_160,
          fontWeight: FontWeight.w400,
          color: AppColors.onBackground),
      button: TextStyle(
          fontSize: AppDimens.fsBT,
          height: AppDimens.lh_160,
          fontWeight: FontWeight.w600),
    ),
  );
}

import 'package:blacktech_cars/config/resources/color_manager.dart';
import 'package:blacktech_cars/config/resources/fonts_manager.dart';
import 'package:flutter/material.dart';

import 'style_manager.dart';
import 'values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primaryColor: ColorManager.primary,
    brightness: Brightness.light,
    textSelectionTheme:
        TextSelectionThemeData(cursorColor: ColorManager.primary),

    //app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: false,
      color: ColorManager.primary,
      shadowColor: ColorManager.primaryOpacity70,
      elevation: AppSize.s0,
      iconTheme: IconThemeData(color: ColorManager.white),
      titleTextStyle: getBoldStyle(
        color: ColorManager.black,
        fontSize: FontSize.s16,
      ),
    ),

    //card theme
    cardTheme: CardTheme(
      shadowColor: ColorManager.lowPrimaryLight,
      color: ColorManager.white,
    ),

    //bottom nav bar theme
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorManager.white,
      selectedItemColor: ColorManager.primary,
      unselectedItemColor: ColorManager.lightGrey,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: const IconThemeData(
        size: AppSize.s20,
      ),
      selectedLabelStyle: getRegularStyle(
        color: ColorManager.primary,
        fontSize: AppSize.s12,
      ),
      unselectedIconTheme: IconThemeData(
        size: AppSize.s20,
        color: ColorManager.lightGrey,
      ),
      unselectedLabelStyle: getRegularStyle(
        color: ColorManager.lightGrey,
        fontSize: AppSize.s12,
      ),
    ),

    //checkbox theme
    checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(ColorManager.white),
        fillColor: MaterialStateProperty.all(ColorManager.primary),
        side: BorderSide(color: ColorManager.grey, width: AppSize.s1_5)),

    //radio theme
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(ColorManager.primary),
    ),
    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white),
        backgroundColor: ColorManager.primary,
        elevation: AppSize.s1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s5),
        ),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: ColorManager.black.withOpacity(0.4),
    ),

    // progress  theme
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: ColorManager.primaryOpacity70,
      refreshBackgroundColor: ColorManager.lowPrimaryLight,
    ),

    //material button theme
    buttonTheme: ButtonThemeData(
      buttonColor: ColorManager.primary,
      focusColor: ColorManager.primary,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s18)),
    ),

    snackBarTheme: SnackBarThemeData(
      actionTextColor: ColorManager.white,
    ),
    //chip theme
    chipTheme: ChipThemeData(
      backgroundColor: ColorManager.white,
      selectedColor: ColorManager.primary.withOpacity(0.3),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s20),
          side: BorderSide(
            color: ColorManager.primary,
          )),
      disabledColor: ColorManager.grey,
      padding: const EdgeInsets.all(AppPadding.p6),
      secondarySelectedColor: ColorManager.primary,
      labelStyle: getRegularStyle(color: ColorManager.black),
      secondaryLabelStyle: getRegularStyle(color: ColorManager.black),
      brightness: Brightness.light,
    ),
    //text theme
    textTheme: TextTheme(
      bodySmall: getRegularStyle(color: ColorManager.black),
      headlineMedium: getSemiBoldStyle(
        color: ColorManager.white,
        fontSize: AppSize.s18,
      ),
      headlineSmall: getBoldStyle(
        color: ColorManager.lightGrey,
        fontSize: AppSize.s12,
      ),
      displaySmall: getBoldStyle(
        color: ColorManager.black,
        fontSize: FontSize.s14,
      ),
      displayMedium: getBoldStyle(
        color: ColorManager.black,
        fontSize: FontSize.s16,
      ),
      displayLarge: getBoldStyle(
        color: ColorManager.black,
        fontSize: FontSize.s25,
      ),
      bodyLarge: getRegularStyle(
        color: ColorManager.primary,
        fontSize: AppSize.s14,
      ),
      titleMedium: getSemiBoldStyle(
        color: ColorManager.black,
        fontSize: AppSize.s16,
      ),
      titleSmall: getRegularStyle(
        color: ColorManager.black,
        fontSize: AppSize.s14,
      ),
    ),

    //Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.only(
          left: AppSize.s12, top: AppSize.s0, bottom: AppSize.s0),
      hintStyle: getRegularStyle(
          color: ColorManager.lightGrey, fontSize: FontSize.s14),
      errorStyle: getRegularStyle(color: ColorManager.red),

      // enabled border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s1),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      // focused border
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s1),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      // error border
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.red, width: AppSize.s1),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),

      // error border
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s1),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
    ),
  );
}

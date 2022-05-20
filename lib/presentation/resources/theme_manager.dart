import 'package:flutter/material.dart';
import 'package:sample_app/presentation/resources/color_manager.dart';
import 'package:sample_app/presentation/resources/font_manager.dart';
import 'package:sample_app/presentation/resources/style_manager.dart';
import 'package:sample_app/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    /// Define the [Color]s of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.primaryOpacity70,

    /// Define the the theme of [Card]

    cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4),

    /// Define the theme of [AppBar]

    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
    ),

    /// Define the theme of [Button]

    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.primaryOpacity70),

    /// Define the theme of [ElevatedButton]

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    /// Define the theme of [Text]

    textTheme: TextTheme(
      headline1: getSemiBoldStyle(
          color: ColorManager.darkGrey, fontSize: FontSize.s16),
      subtitle1:
          getMediumStyle(color: ColorManager.lightGrey, fontSize: FontSize.s14),
      caption: getRegularStyle(color: ColorManager.grey1),
      bodyText1: getRegularStyle(color: ColorManager.grey),
    ),

    /// Define the Theme of [InputDecoration]

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      // hint style
      hintStyle: getRegularStyle(color: ColorManager.grey1),
      // label style
      labelStyle: getMediumStyle(color: ColorManager.darkGrey),
      // error style
      errorStyle: getRegularStyle(color: ColorManager.error),
      // enabled border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s2),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
      ),
      // focused border
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s2),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
      ),
      // error border
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s2),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
      ),
      // focused error border
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s2),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
      ),
    ),
  );
}

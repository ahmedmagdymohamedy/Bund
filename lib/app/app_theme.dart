import 'package:bund/core/resources/app_colors.dart';
import 'package:bund/core/resources/app_fonts.dart';
import 'package:flutter/material.dart';

ThemeData getAppTheme(BuildContext context) {
  return ThemeData(
    // colors
    primaryColor: AppColors.primary,
    secondaryHeaderColor: AppColors.primary,
    disabledColor: AppColors.lightBody,
    scaffoldBackgroundColor: AppColors.scaffold,
    splashColor: AppColors.primary.withOpacity(0.2),
    highlightColor: AppColors.primary.withOpacity(0.1),
    // app bar
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      foregroundColor: AppColors.primary,
      // systemOverlayStyle: const SystemUiOverlayStyle(
      //   statusBarColor: Colors.transparent,
      //   statusBarIconBrightness: Brightness.light,
      // ),
      titleTextStyle: TextStyle(
        color: AppColors.head,
        fontSize: 20,
        fontFamily: AppFonts.getLato(),
        fontWeight: FontWeight.w600,
      ),
    ),

    // elevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.primary),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ),

    // cursor color
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.primary,
    ),

    // Text Theme
    textTheme: Theme.of(context).textTheme.apply(
          bodyColor: AppColors.body,
          fontFamily: AppFonts.getLato(),
        ),

    // icons
    iconTheme: const IconThemeData(
      color: AppColors.primary,
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      elevation: 1,
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 12,
      ),
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.lightBody,
      showUnselectedLabels: true,
    ),

    //
  );
}

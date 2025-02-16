// ignore_for_file: deprecated_member_use

import 'package:eClassify/ui/theme/theme.dart';
import 'package:flutter/material.dart';

enum AppTheme { dark, light }

final appThemeData = {
  AppTheme.light: ThemeData(
    // scaffoldBackgroundColor: pageBackgroundColor,
    brightness: Brightness.light,
    //textTheme
    useMaterial3: false,
    fontFamily: "Manrope",
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: territoryColor_,
      cursorColor: territoryColor_,
      selectionHandleColor: territoryColor_,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: const MaterialStatePropertyAll(territoryColor_),
      trackColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return territoryColor_.withValues(alpha: 0.3);
        }
        return primaryColorDark;
      }),
    ),
    colorScheme: ColorScheme.fromSeed(
        error: errorMessageColor,
        seedColor: territoryColor_,
        brightness: Brightness.light),
  ),
  AppTheme.dark: ThemeData(
    brightness: Brightness.dark,
    useMaterial3: false,
    fontFamily: "Manrope",
    textSelectionTheme: const TextSelectionThemeData(
      selectionHandleColor: territoryColorDark,
      selectionColor: territoryColorDark,
      cursorColor: territoryColorDark,
    ),
    colorScheme: ColorScheme.fromSeed(
        error: errorMessageColor.withValues(alpha: 0.7),
        seedColor: territoryColorDark,
        brightness: Brightness.dark),
    switchTheme: SwitchThemeData(
        thumbColor: const MaterialStatePropertyAll(territoryColor_),
        trackColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return territoryColor_.withValues(alpha: 0.3);
          }
          return primaryColor_.withValues(alpha: 0.2);
        })),
  )
};

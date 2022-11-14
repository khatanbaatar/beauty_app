import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

class ThemeConfig {
  static ThemeData lightTheme = FlexThemeData.light(
    fontFamily: '.SF Pro Display',
    textTheme: TextTheme(),
    onPrimary: Color(0xff111928),
    onPrimaryContainer: Color(0xff111928),
    colors: const FlexSchemeColor(
      primary: Color(0xffffffff),
      primaryContainer: Color(0xfff9fafb),
      secondary: Color(0xff7f56d9),
    ),
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 20,
    appBarOpacity: 0.95,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 20,
      blendOnColors: false,
      textButtonRadius: 5.0,
      elevatedButtonRadius: 10.0,
      outlinedButtonRadius: 5.0,
      textButtonSchemeColor: SchemeColor.secondary,
      elevatedButtonSchemeColor: SchemeColor.secondary,
      outlinedButtonSchemeColor: SchemeColor.secondaryContainer,
      inputDecoratorSchemeColor: SchemeColor.primaryContainer,
      tabBarIndicatorSchemeColor: SchemeColor.tertiaryContainer,
      inputDecoratorRadius: 10.0,
      fabRadius: 40.0,
      snackBarBackgroundSchemeColor: SchemeColor.tertiary,
      cardRadius: 3.0,
      appBarBackgroundSchemeColor: SchemeColor.primary,
      bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.secondary,
      bottomNavigationBarUnselectedLabelSchemeColor:
          SchemeColor.onSecondaryContainer,
      bottomNavigationBarMutedUnselectedLabel: false,
      bottomNavigationBarSelectedIconSchemeColor: SchemeColor.secondary,
      bottomNavigationBarUnselectedIconSchemeColor:
          SchemeColor.onSecondaryContainer,
      bottomNavigationBarMutedUnselectedIcon: false,
      navigationBarSelectedLabelSchemeColor: SchemeColor.secondary,
      navigationBarUnselectedLabelSchemeColor: SchemeColor.onPrimary,
      navigationBarSelectedIconSchemeColor: SchemeColor.secondary,
      navigationBarUnselectedIconSchemeColor: SchemeColor.onPrimary,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    // To use the playground font, add GoogleFonts package and uncomment
    // fontFamily: GoogleFonts.notoSans().fontFamily,
  ).copyWith(splashColor: Color(0xffe0e1e1));

  static ThemeData darkTheme = FlexThemeData.dark(
    fontFamily: '.SF Pro Display',
    onPrimary: Color(0xffffffff),
    onPrimaryContainer: Color(0xffffffff),
    colors: const FlexSchemeColor(
      primary: Color(0xff111928),
      primaryContainer: Color(0xff111928),
      secondary: Color(0xffffffff),
    ),
    surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
    blendLevel: 15,
    appBarStyle: FlexAppBarStyle.background,
    appBarOpacity: 0.90,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 20,
      blendOnColors: false,
      textButtonRadius: 5.0,
      elevatedButtonRadius: 10.0,
      outlinedButtonRadius: 5.0,
      textButtonSchemeColor: SchemeColor.secondary,
      elevatedButtonSchemeColor: SchemeColor.tertiaryContainer,
      outlinedButtonSchemeColor: SchemeColor.secondaryContainer,
      inputDecoratorSchemeColor: SchemeColor.onTertiaryContainer,
      tabBarIndicatorSchemeColor: SchemeColor.tertiaryContainer,
      inputDecoratorRadius: 10.0,
      fabRadius: 40.0,
      snackBarBackgroundSchemeColor: SchemeColor.tertiary,
      cardRadius: 3.0,
      appBarBackgroundSchemeColor: SchemeColor.primary,
      bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.secondary,
      bottomNavigationBarUnselectedLabelSchemeColor:
          SchemeColor.onSecondaryContainer,
      bottomNavigationBarMutedUnselectedLabel: false,
      bottomNavigationBarSelectedIconSchemeColor: SchemeColor.secondary,
      bottomNavigationBarUnselectedIconSchemeColor:
          SchemeColor.onSecondaryContainer,
      bottomNavigationBarMutedUnselectedIcon: false,
      navigationBarSelectedLabelSchemeColor: SchemeColor.secondary,
      navigationBarUnselectedLabelSchemeColor: SchemeColor.onPrimary,
      navigationBarSelectedIconSchemeColor: SchemeColor.secondary,
      navigationBarUnselectedIconSchemeColor: SchemeColor.onPrimary,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    // To use the playground font, add GoogleFonts package and uncomment
    // fontFamily: GoogleFonts.notoSans().fontFamily,
  ).copyWith(splashColor: Color(0xff313232));
}

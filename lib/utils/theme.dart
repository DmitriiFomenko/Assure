import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

final lightTheme = FlexThemeData.light(
  colors: const FlexSchemeColor(
    primary: Color(0xff065808),
    primaryContainer: Color(0xff9bbc9c),
    secondary: Color(0xff365b37),
    secondaryContainer: Color(0xffaebdaf),
    tertiary: Color(0xff2c7e2e),
    tertiaryContainer: Color(0xffb8e6b9),
    appBarColor: Color(0xffb8e6b9),
    error: Color(0xffb00020),
  ),
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 9,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    textButtonRadius: 0.0,
    elevatedButtonRadius: 40.0,
    outlinedButtonRadius: 0.0,
    outlinedButtonBorderWidth: 5.0,
  ),
  useMaterial3ErrorColors: true,
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  fontFamily: 'NotoSans',
);
final darkTheme = FlexThemeData.dark(
  colors: const FlexSchemeColor(
    primary: Color(0xff629f80),
    primaryContainer: Color(0xff273f33),
    secondary: Color(0xff81b39a),
    secondaryContainer: Color(0xff4d6b5c),
    tertiary: Color(0xff88c5a6),
    tertiaryContainer: Color(0xff356c50),
    appBarColor: Color(0xff356c50),
    error: Color(0xffcf6679),
  ),
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 15,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    textButtonRadius: 0.0,
    elevatedButtonRadius: 40.0,
    outlinedButtonRadius: 0.0,
    outlinedButtonBorderWidth: 5.0,
  ),
  useMaterial3ErrorColors: true,
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  fontFamily: 'NotoSans',
);

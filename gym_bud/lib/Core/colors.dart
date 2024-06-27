import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFF636161);
const kConstrastPrimaryColor = Color(0xFFF3752B);
const kContrastSecondaryColor = Color(0xFFFFBF78);
const kOutlineContrastColor = Color(0xFFFFEEA9);

const kLightFontColor = Color(0xFFEDEDF4);
const kDarkFontColor = Color(0xFF5C5757);

const kSuccessResponseColor = Color(0xFFA1C398);
const kWarningResponseColor = Color(0xFFFCDC2A);
const kErrorResponseColor = Color(0xFFFA7070);

const ColorScheme lightColorScheme = ColorScheme(
  primary: kConstrastPrimaryColor,
  secondary: kContrastSecondaryColor,
  surface: kBackgroundColor,
  error: kErrorResponseColor,
  onPrimary: kLightFontColor,
  onSecondary: kDarkFontColor,
  onSurface: kDarkFontColor,
  onError: kLightFontColor,
  brightness: Brightness.light,
);

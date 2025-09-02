

import 'dart:ui';

import 'package:flutter/material.dart';

final appLightTheme = ThemeData(
  // brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.light,
    ).copyWith(
      onSurface: Colors.black, // Light mode text color
    )
);

final appDarkTheme = ThemeData(
    // brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.dark,
    ).copyWith(
      onSurface: Colors.white, // Light mode text color
    )
);
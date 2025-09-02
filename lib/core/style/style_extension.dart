import 'dart:ui';

import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

extension AppStyleExtension on BuildContext {
  TextStyle appInterTextStyle({
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
  }) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        color: color ?? Theme.of(this).colorScheme.onSurface,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  } // TextStyle for Inter font

  OutlineInputBorder appInputBorder({Color color = appSecondaryColor, double width = 1, double radius = 14}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
      borderSide: BorderSide(
        color: color,
        width: width,
      ),
    );
  }

  BoxDecoration capsuleTextViewFilledShape(Color color) {
    return BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14)
    );
  }

  ButtonStyle appPrimaryButtonStyle(){
    return ElevatedButton.styleFrom(
      backgroundColor: appPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16),
    );
  }










}
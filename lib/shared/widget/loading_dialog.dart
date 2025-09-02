import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class LoadingDialog {
  static bool _isDialogOpen = false;

  static Future<void> show(BuildContext context) async {
    if (_isDialogOpen) return;
    _isDialogOpen = true;
    await showDialog(
      context: context,
      barrierDismissible: false, // Prevent dismiss on tap outside
      builder: (context) => WillPopScope(
        onWillPop: () async => false, // Prevent back button
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const CircularProgressIndicator(color: appPrimaryColor,),
          ),
        ),
      ),
    );
    _isDialogOpen = false;
  }

  static void close(BuildContext context) {
    if (_isDialogOpen) {
      Navigator.of(context, rootNavigator: true).pop();
      _isDialogOpen = false;
    }
  }
}

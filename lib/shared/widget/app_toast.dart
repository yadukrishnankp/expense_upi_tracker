import 'package:e_tracker_upi/core/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:toastification/toastification.dart';

class AppToast{



  static  showInfoToast(String message,BuildContext context){
    toastification.show(
      style: ToastificationStyle.simple,
      alignment: Alignment.bottomCenter,
      context: context, // optional if you use ToastificationWrapper
      title: Text(message),
      autoCloseDuration: const Duration(seconds: 3),
    );
  }
  static  showWarningToast(String message,BuildContext context){
    toastification.show(
      style: ToastificationStyle.simple,
      alignment: Alignment.bottomCenter,
      context: context, // optional if you use ToastificationWrapper
      title: Text(message),
      autoCloseDuration: const Duration(seconds: 3),
    );
  }
  static  showErrorToast(String message,BuildContext context){
    toastification.show(
      style: ToastificationStyle.simple,
      alignment: Alignment.bottomCenter,
      context: context, // optional if you use ToastificationWrapper
      title: Text(message),
      autoCloseDuration: const Duration(seconds: 3),
    );
  }
}
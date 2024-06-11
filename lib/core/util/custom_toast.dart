import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showErrorToast(String message) {
  return Future.delayed(const Duration(milliseconds: 500), () {
    FocusManager.instance.primaryFocus!.unfocus();
    Fluttertoast.showToast(
      timeInSecForIosWeb: 3,
      msg: message,
      backgroundColor: Colors.red,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      textColor: Colors.white,
      fontSize: 15.0,
    );
  });
}

showWarningToast(String message) {
  return Future.delayed(const Duration(milliseconds: 500), () {
    FocusManager.instance.primaryFocus!.unfocus();
    Fluttertoast.showToast(
      timeInSecForIosWeb: 3,
      msg: message,
      backgroundColor: Colors.orange,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      textColor: Colors.white,
      fontSize: 15.0,
    );
  });
}

showSuccessToast(String message) {
  return Future.delayed(const Duration(milliseconds: 500), () {
    FocusManager.instance.primaryFocus!.unfocus();
    Fluttertoast.showToast(
      timeInSecForIosWeb: 3,
      msg: message,
      backgroundColor: Colors.green,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      textColor: Colors.white,
      fontSize: 15.0,
    );
  });
}

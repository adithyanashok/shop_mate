import 'package:flutter/material.dart';
import 'package:shop_mate/presentation/constants/colors.dart';

snackBar({
  required BuildContext context,
  required String msg,
  bool success = false,
}) {
  final snackBar = SnackBar(
    content: Text(
      msg,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
    ),
    elevation: 2,
    backgroundColor: success ? AppColor.greenColor : Colors.red,
    duration: const Duration(seconds: 5),
    behavior: SnackBarBehavior.floating,
  );
  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

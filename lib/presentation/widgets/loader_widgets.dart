import 'package:flutter/material.dart';
import 'package:shop_mate/presentation/constants/colors.dart';

class BuildMiniLoader extends StatelessWidget {
  const BuildMiniLoader({
    super.key,
    this.color = AppColor.whiteColor,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      height: 20,
      child: CircularProgressIndicator(
        color: color,
        strokeWidth: 3,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_mate/presentation/constants/colors.dart';

class BuildMiniLoader extends StatelessWidget {
  const BuildMiniLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 20,
      height: 20,
      child: CircularProgressIndicator(
        color: AppColor.whiteColor,
        strokeWidth: 3,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_mate/presentation/constants/colors.dart';

class BuildLoadingWidget extends StatelessWidget {
  const BuildLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        backgroundColor: AppColor.greenColor,
        color: AppColor.whiteColor,
      ),
    );
  }
}

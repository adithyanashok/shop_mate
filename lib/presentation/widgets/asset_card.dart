import 'package:flutter/material.dart';
import 'package:shop_mate/presentation/constants/colors.dart';

class BuildAssetCard extends StatelessWidget {
  const BuildAssetCard({
    super.key,
    required this.asset,
  });
  final Widget asset;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.whiteColor,
      surfaceTintColor: AppColor.whiteColor,
      child: SizedBox(
        width: 70,
        height: 70,
        child: Center(
          child: asset,
        ),
      ),
    );
  }
}

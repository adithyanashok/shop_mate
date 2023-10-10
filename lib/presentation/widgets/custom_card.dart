import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/loader_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.label,
    required this.text,
    required this.color,
    this.isLoading = false,
  });

  final String label;
  final String text;
  final Color color;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .4.sw,
      height: .2.sh,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadiusDirectional.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BuildSmallText(
            text: label,
            color: AppColor.whiteColor,
          ),
          isLoading
              ? const BuildMiniLoader()
              : BuildSmallText(
                  text: text,
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: AppColor.whiteColor,
                )
        ],
      ),
    );
  }
}

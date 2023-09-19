import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class BuildMediumButton extends StatelessWidget {
  const BuildMediumButton({
    super.key,
    required this.backgroundColor,
    this.borderColor,
    required this.textColor,
    required this.text,
  });
  final Color backgroundColor;
  final Color? borderColor;
  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .4.sw,
      height: 50,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: borderColor ?? Colors.transparent,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class BuildButtonWidget extends StatelessWidget {
  const BuildButtonWidget({
    super.key,
    required this.text,
    this.onTap,
  });
  final String text;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Center(
        child: Container(
          width: 0.9.sw,
          height: 60,
          decoration: BoxDecoration(
            color: AppColor.greenColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: BuildButtonText(text: text),
          ),
        ),
      ),
    );
  }
}

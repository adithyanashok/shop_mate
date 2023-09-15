import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';

class BuildHeadingText extends StatelessWidget {
  const BuildHeadingText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        color: AppColor.blackColor,
      ),
    );
  }
}

class BuildSmallText extends StatelessWidget {
  const BuildSmallText({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.color = AppColor.blackColor,
    this.textOverflow = TextOverflow.ellipsis,
  });
  final String text;
  final double fontSize;
  final Color color;
  final TextOverflow textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize.sp,
        fontWeight: FontWeight.w400,
        color: color,
      ),
      overflow: textOverflow,
    );
  }
}

class BuildMiniText extends StatelessWidget {
  const BuildMiniText({
    super.key,
    required this.text,
    required this.fontSize,
  });
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize.sp,
          color: AppColor.colorGrey1,
          fontWeight: FontWeight.w300),
    );
  }
}

class BuildButtonText extends StatelessWidget {
  const BuildButtonText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColor.whiteColor,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class BuildRegularTextWidget extends StatelessWidget {
  const BuildRegularTextWidget({
    super.key,
    required this.text,
    this.fontSize = 22,
  });
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize.sp,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

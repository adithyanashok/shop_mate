import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_mate/presentation/constants/colors.dart';

class BuildHeadingText2 extends StatelessWidget {
  const BuildHeadingText2({
    super.key,
    required this.text,
    this.fontSize = 33,
    this.fontWeight = FontWeight.w700,
    this.letterSpacing = 0.99,
  });
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final double letterSpacing;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 33.sp,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.99,
      ),
    );
  }
}

class BuildTextWithSignupLink extends StatelessWidget {
  const BuildTextWithSignupLink({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          text: text1,
          style: TextStyle(
            color: AppColor.colorGrey1,
            fontSize: 12.sp,
            fontWeight: FontWeight.w200,
          ),
          children: [
            TextSpan(
              text: text2,
              style: TextStyle(
                color: AppColor.blackColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
    this.fontWeight = FontWeight.w400,
  });
  final String text;
  final double fontSize;
  final Color color;
  final TextOverflow textOverflow;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
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
    this.letterSpacing = 0,
    this.color = AppColor.blackColor,
  });
  final String text;
  final double fontSize;
  final double letterSpacing;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: letterSpacing,
      ),
    );
  }
}

class BuildLogoText extends StatelessWidget {
  const BuildLogoText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.moul(fontSize: 20.sp, color: AppColor.whiteColor),
    );
  }
}

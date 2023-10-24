import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_mate/presentation/constants/colors.dart';

class BuildHeadingText2 extends StatelessWidget {
  const BuildHeadingText2({
    Key? key,
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
      text, // Display the provided text
      style: TextStyle(
        fontSize: 33
            .sp, // Use the specified font size (or the default if not provided)
        fontWeight: FontWeight
            .w700, // Use the specified font weight (or the default if not provided)
        letterSpacing:
            0.99, // Use the specified letter spacing (or the default if not provided)
      ),
    );
  }
}

class BuildTextWithSignupLink extends StatelessWidget {
  const BuildTextWithSignupLink({
    super.key,
    required this.text1,
    required this.text2,
    this.text1FontSize = 12,
    this.text1Color = AppColor.colorGrey1,
    this.text2FontSize = 12,
    this.text2Color = AppColor.blackColor,
    this.text1FontWeight = FontWeight.w200,
    this.text2FontWeight = FontWeight.w600,
  });
  final String text1;
  final double text1FontSize;
  final FontWeight text1FontWeight;
  final Color text1Color;
  final String text2;
  final double text2FontSize;
  final FontWeight text2FontWeight;
  final Color text2Color;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: text1,
        style: TextStyle(
          color: text1Color,
          fontSize: text1FontSize.sp,
          fontWeight: text1FontWeight,
        ),
        children: [
          TextSpan(
            text: text2,
            style: TextStyle(
              color: text2Color,
              fontSize: text2FontSize.sp,
              fontWeight: text2FontWeight,
            ),
          ),
        ],
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
    this.fontWeight = FontWeight.w400,
    this.textDecoration = TextDecoration.none,
  });
  final String text;
  final double fontSize;
  final double letterSpacing;
  final Color color;
  final FontWeight fontWeight;
  final TextDecoration textDecoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        decoration: textDecoration,
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

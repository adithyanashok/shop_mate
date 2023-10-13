import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';

class BuildBannerWidget extends StatelessWidget {
  const BuildBannerWidget(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.image,
      required this.buttonTextColor,
      required this.textColor});

  final String text;
  final Color backgroundColor;
  final String image;
  final Color buttonTextColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 15,
              left: 30,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w400,
                  color: textColor,
                ),
              ),
            ),
            Positioned(
              bottom: 25,
              left: 28,
              child: Container(
                width: 100,
                height: 45,
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "Get Now",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: buttonTextColor,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 1,
              child: Image.asset(
                image,
                width: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

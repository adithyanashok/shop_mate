import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';

class BuildBannerWidget extends StatelessWidget {
  const BuildBannerWidget({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.image,
    required this.buttonTextColor,
    required this.textColor,
  });

  final String text; // The text to display on the banner
  final Color backgroundColor; // The background color of the banner
  final String image; // The path to the image to display on the banner
  final Color buttonTextColor; // The color of the button text
  final Color textColor; // The color of the text

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor, // Set the background color
          borderRadius: BorderRadius.circular(10), // Apply rounded corners
        ),
        child: Stack(
          children: [
            Positioned(
              top: 25,
              left: 30,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 22.sp, // Set the font size for the text
                  fontWeight: FontWeight.w400, // Set the font weight
                  color: textColor, // Set the text color
                ),
              ),
            ),
            // Positioned(
            //   bottom: 25,
            //   left: 28,
            //   child: Container(
            //     width: 100,
            //     height: 45,
            //     decoration: BoxDecoration(
            //       color: AppColor.whiteColor, // Set the button background color
            //       borderRadius: BorderRadius.circular(
            //           50), // Apply rounded corners to the button
            //     ),
            //     child: Center(
            //       child: Text(
            //         "Get Now", // Button text
            //         style: TextStyle(
            //           fontSize: 15.sp, // Set the font size for the button text
            //           fontWeight: FontWeight.w600, // Set the font weight
            //           color: buttonTextColor, // Set the button text color
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
              right: 1,
              child: Image.asset(
                image, // Display the specified image
                width: 120, // Set the width of the image
              ),
            ),
          ],
        ),
      ),
    );
  }
}

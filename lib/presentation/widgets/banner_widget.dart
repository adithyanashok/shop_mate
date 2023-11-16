import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

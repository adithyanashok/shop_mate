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
      width: .4.sw, // Set the width of the card (responsive design using sw)
      height: .2.sh, // Set the height of the card (responsive design using sh)
      decoration: BoxDecoration(
        color: color, // Set the background color of the card
        borderRadius: const BorderRadiusDirectional.all(
          Radius.circular(15), // Apply rounded corners to the card
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BuildSmallText(
            text: label, // Display the label text at the top of the card
            color: AppColor.whiteColor, // Set the text color for the label
          ),
          isLoading
              ? const BuildMiniLoader() // Display a loader when the card is in the loading state
              : BuildSmallText(
                  text: text, // Display the main text content of the card
                  fontSize:
                      28, // Set the font size for the main text (optional)
                  fontWeight: FontWeight
                      .w800, // Set the font weight for the main text (optional)
                  color: AppColor
                      .whiteColor, // Set the text color for the main text
                )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/loader_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class BuildMediumButton extends StatelessWidget {
  const BuildMediumButton({
    super.key,
    required this.backgroundColor,
    this.borderColor,
    required this.textColor,
    required this.text,
    this.onTap,
    this.state,
    this.width = 0.4,
    this.height = 50,
  });

  final Color backgroundColor; // The background color of the button
  final Color? borderColor; // The border color of the button (optional)
  final Color textColor; // The text color of the button text
  final String text; // The text to display on the button
  final Function()? onTap; // Function to be executed when the button is tapped
  final dynamic
      state; // Represents the state of the button (e.g., loading state)
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!(); // Execute the provided function when the button is tapped
      },
      child: Container(
        width: width
            .sw, // Set the width of the button (responsive design using sw)
        height: height, // Set the height of the button
        decoration: BoxDecoration(
          color: backgroundColor, // Set the background color of the button
          borderRadius:
              BorderRadius.circular(18), // Apply rounded corners to the button
          border: Border.all(
            color: borderColor ??
                Colors
                    .transparent, // Set the border color (or use transparent if not provided)
          ),
        ),
        child: Center(
          child: state?.isLoading == true
              ? const BuildMiniLoader() // Display a loader when the button is in the loading state
              : Text(
                  text, // Display the button text
                  style: TextStyle(
                    color: textColor, // Set the text color
                    fontSize:
                        14.sp, // Set the font size (responsive design using sp)
                    fontWeight: FontWeight.w400, // Set the font weight
                  ),
                ),
        ),
      ),
    );
  }
}

class BuildButtonWidget extends StatelessWidget {
  const BuildButtonWidget({
    super.key,
    required this.text, // The text to display on the button
    this.onTap, // Function to be executed when the button is tapped
    this.state, // Represents the state of the button (e.g., loading state)
  });

  final String text; // The text to display on the button
  final Function? onTap; // Function to be executed when the button is tapped
  final dynamic
      state; // Represents the state of the button (e.g., loading state)

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!(); // Execute the provided function when the button is tapped
      },
      child: Center(
        child: Container(
          width: 0.9
              .sw, // Set the width of the button (responsive design using sw)
          height: 60, // Set the height of the button
          decoration: BoxDecoration(
            color:
                AppColor.greenColor, // Set the background color of the button
            borderRadius: BorderRadius.circular(
                15), // Apply rounded corners to the button
          ),
          child: Center(
            child: state?.isLoading == true
                ? const BuildMiniLoader() // Display a loader when the button is in the loading state
                : BuildButtonText(text: text), // Display the button text
          ),
        ),
      ),
    );
  }
}

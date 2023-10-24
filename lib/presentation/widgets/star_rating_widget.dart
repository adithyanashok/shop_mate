import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:shop_mate/presentation/constants/colors.dart';

class StarRatingWidget extends StatelessWidget {
  StarRatingWidget({
    Key? key,
    required this.initialRating,
    required this.readOnly,
    this.onChanged,
    this.starSize = 18,
    this.filledColor = AppColor.greenColor,
  }) : super(key: key);

  final double initialRating;
  final bool readOnly;
  final double starSize;
  Function(double)? onChanged;
  final Color filledColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: AnimatedRatingStars(
        onChanged: (value) {
          onChanged!(value);
        },
        initialRating: initialRating, // Set the initial rating value
        readOnly: readOnly, // Set whether the rating is read-only
        starSize: starSize, // Set the size of each star icon
        filledColor: filledColor, // S
        customFilledIcon: Icons.star, // Define the icon for filled stars
        customHalfFilledIcon: Icons
            .star_half, // Define the icon for half-filled stars (if supported)
        customEmptyIcon: Icons.star_border, // Define the icon for empty stars
      ),
    );
  }
}

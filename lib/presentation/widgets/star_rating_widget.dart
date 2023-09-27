import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:shop_mate/presentation/constants/colors.dart';

class StarRatingWidget extends StatelessWidget {
  StarRatingWidget({
    super.key,
    required this.initialRating,
    required this.readOnly,
    this.onChanged,
    this.starSize = 20,
    this.filledColor = AppColor.greenColor,
  });

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
        initialRating: initialRating,
        readOnly: readOnly,
        starSize: starSize,
        filledColor: filledColor,
        customFilledIcon: Icons.star,
        customHalfFilledIcon: Icons.star_half,
        customEmptyIcon: Icons.star_border,
      ),
    );
  }
}

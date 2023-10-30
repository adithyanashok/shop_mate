import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CartProductSkelton extends StatelessWidget {
  const CartProductSkelton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[100]!,
            highlightColor: Colors.grey[300]!,
            child: Card(
              child: Container(
                height: 100,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: 5,
      ),
    );
  }
}

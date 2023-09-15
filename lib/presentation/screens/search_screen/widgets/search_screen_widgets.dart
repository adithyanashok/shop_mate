import 'package:flutter/material.dart';
import 'package:shop_mate/presentation/constants/colors.dart';

class BuildSearchBarWidget extends StatelessWidget {
  const BuildSearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: 16, vertical: 10), // Added margin
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: AppColor.greenColor), // Moved border here
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            // Use Expanded to constrain the TextField width
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              child: const TextField(
                style: TextStyle(fontSize: 13, height: 1),
                decoration: InputDecoration(
                  hintText: "Search...",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class BuildProductCard extends StatelessWidget {
  BuildProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    this.showAddtoCart = true,
    this.onTap,
  }) : super(key: key);

  final Image image;
  final String title;
  final String price;
  final String description;
  final Function? onTap;
  bool showAddtoCart;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Card(
        child: Container(
          width: 165.sp, // Set the width of the product card
          decoration: BoxDecoration(
            color: Colors.white, // Set the background color of the card
            borderRadius:
                BorderRadius.circular(10), // Apply rounded corners to the card
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: image, // Display the product image in the center
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title, // Display the product title
                        style: TextStyle(
                          fontSize: 14.sp, // Set the font size for the title
                          fontWeight: FontWeight
                              .w400, // Set the font weight for the title
                        ),
                      ),
                      BuildSmallText(
                        text: "\$$price",
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        width: 130,
                        // height: 50.sp,
                        child: Text(
                          description, // Display the product description
                          style: TextStyle(
                            fontSize:
                                11.sp, // Set the font size for the description
                            overflow: TextOverflow.ellipsis,
                            color: AppColor
                                .colorGrey1, // Set the text color for the description
                          ),
                        ),
                      ),
                      showAddtoCart
                          ? Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColor
                                    .greenColor, // Set the background color for the "Add to Cart" button
                                borderRadius: BorderRadius.circular(
                                    3), // Apply rounded corners to the button
                              ),
                              child: const Icon(
                                Icons.add, // Display the "Add" icon
                                color:
                                    AppColor.whiteColor, // Set the icon color
                              ),
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
  Function? onTap;
  bool showAddtoCart;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Card(
        child: Container(
          width: 165.sp,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: image,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "\$$price",
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 130,
                        // height: 50.sp,
                        child: Text(
                          description,
                          style: TextStyle(
                            fontSize: 11.sp,
                            overflow: TextOverflow.ellipsis,
                            color: AppColor.colorGrey1,
                          ),
                        ),
                      ),
                      showAddtoCart
                          ? Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColor.greenColor,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: AppColor.whiteColor,
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

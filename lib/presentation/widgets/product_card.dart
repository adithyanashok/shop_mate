import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class BuildProductCard extends StatelessWidget {
  const BuildProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });

  final String image;
  final String title;
  final String price;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        width: 0.5.sw,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: 100,
              ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 130,
                        height: 30,
                        child: Text(
                          description,
                          style: TextStyle(
                              fontSize: 11.sp,
                              overflow: TextOverflow.clip,
                              color: AppColor.colorGrey1),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: AppColor.greenColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(
                          child: Text(
                            '+',
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: AppColor.whiteColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

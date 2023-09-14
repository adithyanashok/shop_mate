import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/button_wodgets.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Product Details"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Image.asset(
                'assets/images/macbook.png',
                width: 340,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(
                "Macbook Pro M2",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const BuildSmallText(
                  text:
                      "APPLE 2022 MacBook Pro M2 - (8 GB/256 GB SSD/Mac OS Monterey) MNEH3HN/A (13.3 Inch, Space Grey, 1.38 Kg)"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Text(
                    "\$1000",
                    style: TextStyle(
                      fontSize: 35.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.greenColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: 140,
                  height: 35,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CircleAvatar(
                        backgroundColor: Colors.blue[index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox();
                    },
                    itemCount: 3,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BuildMediumButton(
                  backgroundColor: Colors.transparent,
                  text: "BUY  NOW",
                  textColor: AppColor.greenColor,
                  borderColor: AppColor.greenColor,
                ),
                BuildMediumButton(
                  backgroundColor: AppColor.greenColor,
                  text: "ADD TO CART",
                  textColor: AppColor.whiteColor,
                  borderColor: AppColor.greenColor,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: BuildHeadingText(text: "Product Review"),
            ),
            SizedBox(
              width: double.infinity,
              height: 205,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: SizedBox(
                        width: 200,
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Greate Product",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const BuildSmallText(
                                text:
                                    "Awesome product loved it, nice quality. value fo money",
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox();
                },
                itemCount: 5,
              ),
            )
          ],
        ),
      )),
    );
  }
}

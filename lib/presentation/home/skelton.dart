import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop_mate/presentation/home/home_screen.dart';
import 'package:shop_mate/presentation/home/productlist_section.dart';
import 'package:shop_mate/presentation/widgets/banner_widget.dart';
import 'package:shop_mate/presentation/widgets/product_card.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class SkeletonLoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          centerTitle: true,
          title: const Text("SHOPMATE"),
          backgroundColor: Colors.white, // Set your desired app bar color
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 1.sw,
                height: 0.2.sh,
                child: PageView(
                  // Loading skeleton for PageView
                  children: [
                    Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        color:
                            Colors.white, // Set your desired background color
                        child: SizedBox(
                          width: 1.sw,
                          height: 0.2.sh,
                        ),
                      ),
                    ),
                    Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        color:
                            Colors.white, // Set your desired background color
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 14, bottom: 10),
                child: BuildRegularTextWidget(
                  text: "Categories",
                  fontWeight: FontWeight.w500,
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
              // Loading skeleton for Categories
              Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: SizedBox(
                  height: 50.h,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19, right: 19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) {
                        return const CategoryIconCard(
                          icon: Icons.new_label,
                        );
                      }),
                    ),
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 14, bottom: 10),
                child: BuildRegularTextWidget(
                  text: "Categories",
                  fontWeight: FontWeight.w500,
                  fontSize: 19,
                  color: Colors.white,
                ),
              ),
              Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: SizedBox(
                  height: 250,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 165.sp,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // Set the background color of the card
                            borderRadius: BorderRadius.circular(
                                10), // Apply rounded corners to the card
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(),
                    itemCount: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

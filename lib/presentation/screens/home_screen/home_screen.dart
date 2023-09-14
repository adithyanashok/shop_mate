import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/app_bar_widget.dart';
import 'package:shop_mate/presentation/widgets/banner_widget.dart';
import 'package:shop_mate/presentation/widgets/product_card.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Current page index for the PageView
  int _currentPage = 0;

  // Timer to handle automatic page switching
  Timer? _timer;

  // Page controller for the PageView
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();

    // Initialize a timer for automatic page switching
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      // Check if we are at the last page, reset to the first page if so
      if (_currentPage < 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      // Animate to the new page
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.linearToEaseOut,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    // Cancel the timer to prevent memory leaks
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.1.sh),
        child: const BuildAppBarWidget(title: "SHOPMATE"),
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
                  controller: _pageController,
                  children: const [
                    // Banner widget for the first page
                    BuildBannerWidget(
                      backgroundColor: AppColor.greenColor,
                      buttonTextColor: AppColor.greenColor,
                      image: 'assets/images/shopping.png',
                      text: '50% OFF DURING\nSALE',
                      textColor: AppColor.whiteColor,
                    ),
                    // Banner widget for the second page
                    BuildBannerWidget(
                      backgroundColor: AppColor.dartBlueColor,
                      buttonTextColor: AppColor.dartBlueColor,
                      image: 'assets/images/shopping.png',
                      text: '50% OFF DURING\nSALE',
                      textColor: AppColor.whiteColor,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 15, left: 10),
                      child: Container(
                        height: 5.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          color: AppColor.lightGrey,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/macbook.png',
                                width: 40,
                              ),
                              Text(
                                "Laptops",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.blackColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox();
                  },
                  itemCount: 50,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: BuildHeadingText(
                  text: "Laptops",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 250,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const BuildProductCard(
                      title: "Macbook Pro M2",
                      image: 'assets/images/macbook.png',
                      description:
                          "APPLE 2022 MacBook Pro M2 - (8 GB/256 GB SSD/Mac OS Monterey) MNEH3HN/A  (13.3 Inch, Space Grey, 1.38 Kg)",
                      price: '1999',
                    ),
                    separatorBuilder: (context, index) => const SizedBox(),
                    itemCount: 20,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: BuildHeadingText(
                  text: "Earphones",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 250,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const BuildProductCard(
                      title: "Macbook Pro M2",
                      image: 'assets/images/beats.png',
                      description:
                          "APPLE 2022 MacBook Pro M2 - (8 GB/256 GB SSD/Mac OS Monterey) MNEH3HN/A  (13.3 Inch, Space Grey, 1.38 Kg)",
                      price: '1999',
                    ),
                    separatorBuilder: (context, index) => const SizedBox(),
                    itemCount: 20,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: BuildHeadingText(
                  text: "Mobiles",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 250,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const BuildProductCard(
                      title: "Macbook Pro M2",
                      image: 'assets/images/iphone.png',
                      description:
                          "APPLE 2022 MacBook Pro M2 - (8 GB/256 GB SSD/Mac OS Monterey) MNEH3HN/A  (13.3 Inch, Space Grey, 1.38 Kg)",
                      price: '1999',
                    ),
                    separatorBuilder: (context, index) => const SizedBox(),
                    itemCount: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}

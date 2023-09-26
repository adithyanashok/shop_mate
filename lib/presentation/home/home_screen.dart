// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/home/earphone_section.dart';
import 'package:shop_mate/presentation/home/laptop_section.dart';
import 'package:shop_mate/presentation/home/mobile_section.dart';
import 'package:shop_mate/presentation/signup/signup_screen.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';
import 'package:shop_mate/presentation/widgets/app_bar_widget.dart';
import 'package:shop_mate/presentation/widgets/banner_widget.dart';
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
                  children: [
                    // Banner widget for the first page
                    GestureDetector(
                      onTap: () async {
                        await signOut();
                      },
                      child: const BuildBannerWidget(
                        backgroundColor: AppColor.greenColor,
                        buttonTextColor: AppColor.greenColor,
                        image: 'assets/images/shopping.png',
                        text: '50% OFF DURING\nSALE',
                        textColor: AppColor.whiteColor,
                      ),
                    ),
                    // Banner widget for the second page
                    const BuildBannerWidget(
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
              const LaptopSection(),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: BuildHeadingText(
                  text: "Earphones",
                ),
              ),
              const EarphonesSection(),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: BuildHeadingText(
                  text: "Mobiles",
                ),
              ),
              const MobileSection(),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavBarWidget(),
    );
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();

      // Navigate to the onboarding screen.
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return SignupScreen();
        },
      ));
    } catch (e) {
      snackBar(context: context, msg: e.toString());
    }
  }
}

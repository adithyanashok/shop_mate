import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/app_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 0;

  Timer? _timer;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage <= 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.decelerate,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
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
        child: SizedBox(
          width: 1.sw,
          height: 0.2.sh,
          child: PageView(
            controller: _pageController,
            children: const [
              BuildBannerWidget(
                backgroundColor: AppColor.greenColor,
                buttonTextColor: AppColor.greenColor,
                image: 'assets/images/shopping.png',
                text: '50% OFF DURING\nSALE',
                textColor: AppColor.whiteColor,
              ),
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
      ),
    );
  }
}

class BuildBannerWidget extends StatelessWidget {
  const BuildBannerWidget(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.image,
      required this.buttonTextColor,
      required this.textColor});

  final String text;
  final Color backgroundColor;
  final String image;
  final Color buttonTextColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.2.sh,
      width: 0.1.sw,
      color: backgroundColor,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 30,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w400,
                color: textColor,
              ),
            ),
          ),
          Positioned(
            bottom: 35,
            left: 28,
            child: Container(
              width: 100,
              height: 45,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  "Get Now",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: buttonTextColor,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 1,
            child: Image.asset(
              image,
              width: 120,
            ),
          ),
        ],
      ),
    );
  }
}

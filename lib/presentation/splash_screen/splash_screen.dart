import 'package:flutter/material.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/login_screen/login_screen.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () => {
        Navigator.of(context).pushAndRemoveUntil(
            buildNavigation(
              route: const LoginScreen(),
            ),
            (route) => false)
      },
    );
    return Scaffold(
      backgroundColor: AppColor.greenColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const BuildRegularTextWidget(
                text: "WELCOME TO",
                fontSize: 22,
                letterSpacing: 6.48,
                color: AppColor.whiteColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/images/bag-shopping.png',
                    width: 40,
                  ),
                  const BuildLogoText(title: 'SHOPMATE')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

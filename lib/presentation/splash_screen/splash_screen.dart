import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/main_page.dart';
import 'package:shop_mate/presentation/signup/signup_screen.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final user = FirebaseAuth.instance.currentUser!.emailVerified;
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () => {
        if (user == true)
          {
            Navigator.of(context).pushAndRemoveUntil(
              buildNavigation(
                route: const MainPage(),
              ),
              (route) => false,
            )
          }
        else
          {
            Navigator.of(context).pushAndRemoveUntil(
              buildNavigation(
                route: SignupScreen(),
              ),
              (route) => false,
            )
          }
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

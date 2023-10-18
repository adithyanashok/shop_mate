import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shop_mate/domain/core/role_based_login/role_based_login.dart';
import 'package:shop_mate/domain/local_auth/local_auth.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final user = FirebaseAuth.instance.currentUser?.emailVerified;
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () async {
        final isAuthenticated = await LocalAuthApi.authenticate();
        if (isAuthenticated) {
          if (user == true) {
            route(context);
          } else {
            route(context);
          }
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

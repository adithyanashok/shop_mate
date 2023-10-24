import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shop_mate/domain/core/role_based_login/role_based_login.dart';
import 'package:shop_mate/domain/local_auth/local_auth.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  // Check if the user's email is verified
  final user = FirebaseAuth.instance.currentUser?.emailVerified;

  @override
  Widget build(BuildContext context) {
    // Delayed execution after 3 seconds
    Future.delayed(
      const Duration(seconds: 3),
      () async {
        // Authenticate the user using LocalAuthApi (authentication logic not shown)
        final isAuthenticated = await LocalAuthApi.authenticate();

        // Check if the user is authenticated
        if (isAuthenticated) {
          if (user == true) {
            // If the user's email is verified, navigate to a certain route
            route(context);
          } else {
            // If the user's email is not verified, navigate to another route
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
              // Display a welcome message
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
                  // Display an image (a shopping bag icon)
                  Image.asset(
                    'assets/images/bag-shopping.png',
                    width: 40,
                  ),
                  // Display the app logo text
                  const BuildLogoText(title: 'SHOPMATE'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/login/login_screen.dart';
import 'package:shop_mate/presentation/signup/signup_screen.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BuildLogoText(title: "SHOPMATE"),
        centerTitle: true,
        backgroundColor: AppColor.greenColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/new-onboard.png',
              height: 0.5.sh,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),
            const BuildRegularTextWidget(
              text: "Let’s Get Started",
              fontSize: 38,
              fontWeight: FontWeight.bold,
              color: AppColor.greenColor,
            ),
            const SizedBox(height: 10),
            const BuildRegularTextWidget(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              textAlign: TextAlign.center,
              text:
                  "From smartphones to smart home devices, find the latest and greatest in the world of electronics. We've got it all.",
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BuildMediumButton(
                  backgroundColor: AppColor.greenColor,
                  textColor: Colors.white,
                  text: "Login",
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const LoginScreen();
                        },
                      ),
                      (route) => false,
                    );
                  },
                ),
                const SizedBox(width: 20),
                BuildMediumButton(
                  backgroundColor: AppColor.whiteColor,
                  textColor: AppColor.greenColor,
                  text: "Signup",
                  height: 50,
                  borderColor: AppColor.greenColor,
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SignupScreen();
                        },
                      ),
                      (route) => false,
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

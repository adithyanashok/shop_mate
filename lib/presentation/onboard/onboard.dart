import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/home/home_screen.dart';
import 'package:shop_mate/presentation/login/login_screen.dart';
import 'package:shop_mate/presentation/signup/signup_screen.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BuildRegularTextWidget(
          text: "SHOPEMATE",
          letterSpacing: 3,
          fontSize: 19,
          fontWeight: FontWeight.w300,
        ),
        centerTitle: true,
      ),
      body: PageView(children: [
        Column(
          children: [
            SizedBox(
              width: 1.sw,
              height: .5.sh,
              // color: AppColor.dartBlueColor,
              child: Image.network(
                'https://flowdigital.my/wp-content/uploads/2022/05/Bannerr-Website-02.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            const BuildRegularTextWidget(
              text: "WELCOME TO SHOPMATE",
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: .8.sw,
                child: const BuildRegularTextWidget(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  textAlign: TextAlign.center,
                  text:
                      "From smartphones to smart home devices, find the latest and greatest in the world of electronics. We've got it all.",
                ),
              ),
            ),
            // const Spacer(),
            const SizedBox(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    buildNavigation(route: SignupScreen());
                  },
                  child: BuildButtonWidget(
                    text: "Signup",
                    onTap: () {},
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                BuildMediumButton(
                  backgroundColor: AppColor.whiteColor,
                  textColor: AppColor.greenColor,
                  borderColor: AppColor.greenColor,
                  text: "Login",
                  width: .9,
                  height: 60,
                  onTap: () {
                    buildNavigation(
                      route: LoginScreen(),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ]),
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_mate/application/signup/signup_bloc.dart';
import 'package:shop_mate/domain/users/model/user.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/login_screen/login_screen.dart';
import 'package:shop_mate/presentation/widgets/asset_card.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_form_field_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  UserModel userModel = UserModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.close,
              color: AppColor.colorGrey3,
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Column(
                  children: [
                    BuildHeadingText2(text: "Let’s Get Started"),
                    BuildSmallText(
                      text: 'Sign up and we will continue',
                      color: AppColor.colorGrey2,
                      fontSize: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              BuildTextFormField(
                label: 'Email',
                hintText: "Enter your email",
                icon: Icons.mail,
                func: (value) {
                  final email = userModel.copyWith(email: value);
                  userModel = email;
                  log(userModel.toString());
                },
              ),
              const SizedBox(
                height: 10,
              ),
              BuildTextFormField(
                label: 'Username',
                hintText: "Enter username",
                icon: Icons.person,
                func: (value) {
                  final username = userModel.copyWith(username: value);

                  userModel = username;
                  log(username.toString());
                },
              ),
              const SizedBox(
                height: 10,
              ),
              BuildTextFormField(
                label: 'Password',
                hintText: "Enter your password",
                icon: Icons.lock,
                obscureText: true,
                func: (value) {
                  final password = userModel.copyWith(password: value);
                  userModel = password;
                  log(userModel.toString());
                },
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColor.colorGrey2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: BuildSmallText(
                      text: "Or",
                      fontSize: 14,
                      color: AppColor.colorGrey2,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: AppColor.colorGrey2,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildAssetCard(
                    asset: Image.asset(
                      'assets/images/google.com.png',
                      width: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  BuildAssetCard(
                    asset: SvgPicture.asset('assets/images/fb.svg'),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  final user = userModel;
                  BlocProvider.of<SignupBloc>(context)
                      .add(SignupEvent.signup(userModel: user));
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 25),
                  height: 60,
                  width: 0.9.sw,
                  decoration: BoxDecoration(
                    color: AppColor.greenColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Center(
                    child: BuildSmallText(
                      text: "Sign up",
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: AppColor.whiteColor,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(buildNavigation(route: LoginScreen()));
                },
                child: const BuildTextWithSignupLink(
                  text1: "Don't have an account?",
                  text2: "Login",
                ),
              )
            ],
          ),
        ))));
  }
}

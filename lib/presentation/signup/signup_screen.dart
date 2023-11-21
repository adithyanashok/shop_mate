import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/login/login_bloc.dart';
import 'package:shop_mate/application/signup/signup_bloc.dart';
import 'package:shop_mate/domain/users/model/user.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/login/login_screen.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';
import 'package:shop_mate/presentation/widgets/loader_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_form_field_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  UserModel userModel = const UserModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/signup.png',
                        width: 200.sp,
                      ),
                      const BuildHeadingText2(text: "Let’s Get Started"),
                      const BuildSmallText(
                        text: 'Sign up and we will continue',
                        color: AppColor.colorGrey2,
                        fontSize: 15,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),

                // Input field for email
                BuildTextFormField(
                  label: 'Email',
                  hintText: "Enter your email",
                  icon: Icons.mail,
                  func: (value) {
                    // Update the userModel with the entered email.
                    final email = userModel.copyWith(email: value);
                    userModel = email;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                // Input field for username
                BuildTextFormField(
                  label: 'Username',
                  hintText: "Enter username",
                  icon: Icons.person,
                  func: (value) {
                    // Update the userModel with the entered username.
                    final username = userModel.copyWith(username: value);
                    userModel = username;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                // Input field for password
                BuildTextFormField(
                  label: 'Password',
                  hintText: "Enter your password",
                  icon: Icons.lock,
                  obscureText: true,
                  func: (value) {
                    // Update the userModel with the entered password.
                    final password = userModel.copyWith(password: value);
                    userModel = password;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        BlocProvider.of<LoginBloc>(context).add(
                          LoginEvent.signInWithGoogle(
                              buildContext: context, userModel: userModel),
                        );
                      },
                      child: Card(
                        color: AppColor.whiteColor,
                        surfaceTintColor: AppColor.whiteColor,
                        child: SizedBox(
                          width: 0.8.sw,
                          height: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/google.com.png',
                                width: 50,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const BuildSmallText(text: "Sigup with Google")
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),

                BlocBuilder<SignupBloc, SignupState>(
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () {
                        // Validate and submit the sign-up form.
                        formValidationAndSubmission(context);
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 25),
                        height: 60,
                        width: 0.9.sw,
                        decoration: BoxDecoration(
                          color: AppColor.greenColor,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: state.isLoading
                              ? const BuildMiniLoader()
                              : const BuildSmallText(
                                  text: "Sign up",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.whiteColor,
                                ),
                        ),
                      ),
                    );
                  },
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the login screen.
                    Navigator.of(context).push(
                      buildNavigation(
                        route: const LoginScreen(),
                      ),
                    );
                  },
                  child: const BuildTextWithSignupLink(
                    text1: "Don't have an account?",
                    text2: "Login",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void formValidationAndSubmission(BuildContext context) {
    final user = userModel;
    if (user.email == '' || user.email == null) {
      // Show a snack bar message if email is missing.
      snackBar(
        context: context,
        msg: 'Please enter your email address.',
      );
    } else if (user.username == '' || user.username == null) {
      // Show a snack bar message if username is missing.
      snackBar(
        context: context,
        msg: 'Please enter your username.',
      );
    } else if (user.password == '' || user.password == null) {
      // Show a snack bar message if password is missing.
      snackBar(
        context: context,
        msg: 'Please enter your password.',
      );
    } else {
      // Trigger sign-up event with user data.
      BlocProvider.of<SignupBloc>(context).add(
        SignupEvent.signup(
          userModel: user,
          context: context,
        ),
      );
    }
  }
}

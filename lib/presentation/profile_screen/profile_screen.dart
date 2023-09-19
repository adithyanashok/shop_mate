import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/app_bar_widget.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const BuildRegularTextWidget(text: "Profile"),
          centerTitle: true,
        ),
        body: const SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildTextButton(icon: Icons.edit, text: "Edit profile"),
              BuildTextButton(icon: Icons.home_filled, text: "Address"),
              BuildTextButton(icon: Icons.widgets, text: "Orders"),
            ],
          ),
        ));
  }
}

class BuildTextButton extends StatelessWidget {
  const BuildTextButton({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        icon,
        color: AppColor.blackColor,
        size: 20.sp,
      ),
      label: Text(
        text,
        style: TextStyle(
          color: AppColor.blackColor,
          fontSize: 20.sp,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}

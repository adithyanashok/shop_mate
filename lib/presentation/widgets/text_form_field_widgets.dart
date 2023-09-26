import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class BuildTextFormField extends StatelessWidget {
  const BuildTextFormField(
      {super.key,
      required this.label,
      required this.hintText,
      required this.icon,
      this.obscureText = false,
      this.keyboardType = TextInputType.multiline,
      this.func});
  final String label;
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextInputType keyboardType;
  final Function(String value)? func;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildSmallText(
          text: label,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: .9.sw,
          height: 55,
          decoration: BoxDecoration(
            color: AppColor.colorGrey4,
            borderRadius: BorderRadius.circular(17),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: AppColor.colorGrey2,
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextField(
                  onChanged: (value) {
                    log(value);
                    func!(value);
                  },
                  keyboardType: keyboardType,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: AppColor.colorGrey2,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  cursorColor: AppColor.colorGrey1,
                  style: TextStyle(
                    color: AppColor.colorGrey2,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class BuildTextAreaField extends StatelessWidget {
  const BuildTextAreaField({
    super.key,
    required this.label,
    required this.hintText,
    required this.icon,
    this.func,
  });
  final String label;
  final String hintText;
  final IconData icon;
  final Function(String value)? func;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildSmallText(
          text: label,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: .9.sw,
          height: 100,
          decoration: BoxDecoration(
            color: AppColor.colorGrey4,
            borderRadius: BorderRadius.circular(17),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: AppColor.colorGrey2,
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextField(
                  onChanged: (value) {
                    func!(value);
                  },
                  maxLines: 10,
                  minLines: 7,
                  maxLength: 500,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: AppColor.colorGrey2,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  cursorColor: AppColor.colorGrey1,
                  style: TextStyle(
                    color: AppColor.colorGrey2,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

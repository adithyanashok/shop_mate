import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class BuildTextFormField extends StatefulWidget {
  BuildTextFormField(
      {super.key,
      required this.label,
      required this.hintText,
      required this.icon,
      this.initialValue = '',
      this.obscureText = false,
      this.keyboardType = TextInputType.multiline,
      required this.func});
  final String label;
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextInputType keyboardType;
  final Function(String value) func;
  final String initialValue;

  @override
  State<BuildTextFormField> createState() => _BuildTextFormFieldState();
}

class _BuildTextFormFieldState extends State<BuildTextFormField> {
  late TextEditingController textEditingController;
  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildSmallText(
          text: widget.label,
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
                widget.icon,
                color: AppColor.colorGrey2,
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextField(
                  onChanged: (value) {
                    widget.func(value);
                    log(value);
                  },
                  keyboardType: widget.keyboardType,
                  obscureText: widget.obscureText,
                  controller: textEditingController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: widget.hintText,
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

class BuildTextAreaField extends StatefulWidget {
  const BuildTextAreaField({
    super.key,
    required this.label,
    required this.hintText,
    required this.icon,
    this.func,
    this.maxLength = 500,
    this.initialValue = '',
  });
  final String label;
  final String hintText;
  final IconData icon;
  final Function(String value)? func;
  final int maxLength;
  final String initialValue;

  @override
  State<BuildTextAreaField> createState() => _BuildTextAreaFieldState();
}

class _BuildTextAreaFieldState extends State<BuildTextAreaField> {
  late TextEditingController textEditingController;
  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildSmallText(
          text: widget.label,
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
                widget.icon,
                color: AppColor.colorGrey2,
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextField(
                  onChanged: (value) {
                    widget.func!(value);
                  },
                  maxLines: 10,
                  minLines: 7,
                  maxLength: widget.maxLength,
                  controller: textEditingController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: widget.hintText,
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

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class BuildAddressCard extends StatefulWidget {
  BuildAddressCard({
    super.key,
    required this.title,
    required this.text,
    this.onChanged,
    this.selectedValue,
  });
  final String title;
  final String text;
  final Function(String)? onChanged;
  String? selectedValue;

  @override
  State<BuildAddressCard> createState() => _BuildAddressCardState();
}

class _BuildAddressCardState extends State<BuildAddressCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: AppColor.whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Radio(
            value: widget.text,
            groupValue: widget.selectedValue,
            onChanged: (value) {
              log(value.toString());
              setState(() {
                widget.selectedValue = value.toString();
                widget.onChanged!(value.toString());
              });
            },
            activeColor: AppColor.greenColor,
          ),
          SizedBox(
            width: 0.8.sw,
            // height: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        color: AppColor.blackColor,
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const Icon(
                      Icons.edit,
                      size: 20,
                      color: Colors.grey,
                    )
                  ],
                ),
                BuildSmallText(
                  text: widget.text,
                  textOverflow: TextOverflow.visible,
                  color: AppColor.colorGrey1,
                  fontSize: 11.sp,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

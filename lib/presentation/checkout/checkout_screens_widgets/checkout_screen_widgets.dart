import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class BuildAddressCard extends StatefulWidget {
  BuildAddressCard({
    super.key,
    required this.title,
    required this.text,
    this.onChanged,
    this.selectedValue,
    this.showRadioButton = true,
    this.deleteAddress,
  });
  final String title;
  final String text;
  final Function(String)? onChanged;
  final Function()? deleteAddress;
  String? selectedValue;
  final bool showRadioButton;

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
          widget.showRadioButton
              ? Radio(
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
                )
              : const SizedBox(),
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
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        widget.deleteAddress!();
                      },
                      icon: const Icon(Icons.delete),
                    ),
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

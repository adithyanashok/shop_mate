import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class BuildAddressCard extends StatefulWidget {
  BuildAddressCard({
    super.key,
    this.title,
    required this.text,
    this.onChanged,
    this.selectedValue,
    this.showRadioButton = true,
    this.deleteAddress,
    this.showActionButton = true,
  });
  final String? title; // Title of the address.
  final String text; // Address text.
  final Function(String)?
      onChanged; // Callback function for when the address selection changes.
  final Function()?
      deleteAddress; // Callback function for deleting the address.
  String? selectedValue; // Currently selected address.
  final bool showRadioButton; // Whether to display a radio button.
  final bool showActionButton; // Whether to display a delete action button.

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
                    setState(() {
                      widget.selectedValue = value.toString();
                      widget.onChanged!(value
                          .toString()); // Call the onChanged callback when the radio button is selected.
                    });
                  },
                  activeColor: AppColor.greenColor,
                )
              : const SizedBox(), // Display the radio button or an empty space based on the showRadioButton flag.
          SizedBox(
            width: 0.8.sw, // Set the width of the address card.
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.title == null
                    ? const SizedBox()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.title!,
                            style: TextStyle(
                              color: AppColor.blackColor,
                              fontSize: 21.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          const Spacer(),
                          widget.showActionButton
                              ? IconButton(
                                  onPressed: () {
                                    widget
                                        .deleteAddress!(); // Call the deleteAddress callback when the action button is pressed.
                                  },
                                  icon: const Icon(
                                      Icons.delete), // Display a delete icon.
                                )
                              : const SizedBox() // Display the action button or an empty space based on the showActionButton flag.
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

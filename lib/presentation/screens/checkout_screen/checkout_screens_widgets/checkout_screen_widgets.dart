import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class BuildPaymentMethodCard extends StatelessWidget {
  const BuildPaymentMethodCard({
    super.key,
    required this.asset,
  });
  final Widget asset;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.whiteColor,
      surfaceTintColor: AppColor.whiteColor,
      child: SizedBox(
        width: 70,
        height: 70,
        child: Center(
          child: asset,
        ),
      ),
    );
  }
}

class BuildAddressCard extends StatelessWidget {
  BuildAddressCard({
    super.key,
    required this.title,
    required this.text,
  });
  final String title;
  final String text;
  bool get value => val;

  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: AppColor.whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Radio(
            value: true,
            groupValue: val,
            onChanged: (value) {},
            activeColor: AppColor.greenColor,
          ),
          SizedBox(
            width: 0.8.sw,
            // height: 60,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Home',
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
                  text:
                      'Cecilia Chapman711-2880 Nulla St.Mankato Mississippi 96522(257) 563-7401',
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

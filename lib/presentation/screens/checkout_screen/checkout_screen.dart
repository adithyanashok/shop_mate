import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BuildRegularTextWidget(text: 'Checkout'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BuildHeadingText(text: "Shipping Address"),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      size: 30,
                      color: AppColor.colorGrey1,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: BuildAddressCard(
                      title: "Home",
                      text:
                          'Cecilia Chapman711-2880 Nulla St.Mankato Mississippi 96522(257) 563-7401',
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: 2,
              ),
            ),
            Container(
              width: double.infinity,
              height: .4.sh,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BuildHeadingText(text: "Payment Methods"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BuildAddressCard extends StatelessWidget {
  const BuildAddressCard({
    super.key,
    required this.title,
    required this.text,
  });
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Radio(
            value: true,
            groupValue: true,
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/checkout/checkout_screen.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/widgets/app_bar_widget.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/product_card.dart';
import 'package:shop_mate/presentation/widgets/row_widget.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BuildRegularTextWidget(text: 'Cart'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Column(
          children: [
            CartProductSection(),
            Divider(
              color: AppColor.greenColor,
              thickness: 3,
            ),
            CartAmountSection()
          ],
        ),
      ),
    );
  }
}

class CartAmountSection extends StatelessWidget {
  const CartAmountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        height: .5.sh,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const BuildRegularTextWidget(text: "Price Details"),
              const BuildTextRow(
                text1: BuildRegularTextWidget(
                  text: 'Subtotal:',
                  fontSize: 15,
                ),
                text2: BuildRegularTextWidget(
                  text: '\$1000.0',
                  fontSize: 15,
                ),
              ),
              const BuildTextRow(
                text1: BuildRegularTextWidget(
                  text: 'Delivery Fee:',
                  fontSize: 15,
                ),
                text2: BuildRegularTextWidget(
                  text: '\$5.00',
                  fontSize: 15,
                ),
              ),
              const BuildTextRow(
                text1: BuildRegularTextWidget(
                  text: 'Discount:',
                  fontSize: 15,
                ),
                text2: BuildRegularTextWidget(
                  text: '\$10',
                  fontSize: 15,
                ),
              ),
              const BuildTextRow(
                text1: BuildRegularTextWidget(text: "Total:"),
                text2: BuildHeadingText(text: '\$1000'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(buildNavigation(route: CheckoutScreen()));
                },
                child: const BuildButtonWidget(
                  text: 'Continue',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CartProductSection extends StatelessWidget {
  const CartProductSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 0.4.sh,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/macbook.png',
                    width: 95,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BuildSmallText(text: 'Macbook Pro M2'),
                      SizedBox(
                        width: 0.5.sw,
                        child: const BuildSmallText(
                          text: 'Macbook Pro M2',
                          color: AppColor.colorGrey1,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: AppColor.greenColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        size: 15,
                        color: AppColor.whiteColor,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text('5'),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: AppColor.greenColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.remove,
                        size: 15,
                        color: AppColor.whiteColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            color: AppColor.greenColor,
          );
        },
        itemCount: 100,
      ),
    );
  }
}

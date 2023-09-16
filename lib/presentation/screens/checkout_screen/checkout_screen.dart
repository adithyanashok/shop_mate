import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/screens/checkout_screen/checkout_screens_widgets/checkout_screen_widgets.dart';
import 'package:shop_mate/presentation/screens/order_successful_screen/order_successful_screen.dart';
import 'package:shop_mate/presentation/widgets/row_widget.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class CheckoutScreen extends StatelessWidget {
  CheckoutScreen({super.key});

  int addressCount = 0;

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
                  addressCount >= 2
                      ? IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            size: 30,
                            color: AppColor.colorGrey1,
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  addressCount = index;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
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
            SizedBox(
              width: double.infinity,
              height: .4.sh,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: BuildHeadingText(text: "Payment Methods"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(buildNavigation(route: OrderSuccessScreen()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        BuildPaymentMethodCard(
                          asset: SvgPicture.asset(
                            'assets/images/stripe-v2.svg',
                            width: 55,
                          ),
                        ),
                        BuildPaymentMethodCard(
                          asset: SvgPicture.asset(
                            'assets/images/razorpay.svg',
                            width: 55,
                          ),
                        ),
                        BuildPaymentMethodCard(
                          asset: Image.asset(
                            'assets/images/google.com.png',
                            width: 55,
                          ),
                        ),
                        BuildPaymentMethodCard(
                          asset: Image.asset(
                            'assets/images/cashondel.png',
                            width: 55,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: Card(
                      surfaceTintColor: AppColor.whiteColor,
                      elevation: 2,
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BuildHeadingText(text: "Price Details"),
                            BuildTextRow(
                              text1: BuildRegularTextWidget(
                                text: "Subtotal:",
                                fontSize: 16,
                              ),
                              text2: BuildRegularTextWidget(
                                text: "\$100",
                                fontSize: 16,
                              ),
                            ),
                            BuildTextRow(
                              text1: BuildRegularTextWidget(
                                text: "Delivery Fee:",
                                fontSize: 16,
                              ),
                              text2: BuildRegularTextWidget(
                                text: "\$50",
                                fontSize: 16,
                              ),
                            ),
                            BuildTextRow(
                              text1: BuildRegularTextWidget(
                                text: "Total:",
                                fontSize: 20,
                              ),
                              text2: BuildHeadingText(text: "\$150.00"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

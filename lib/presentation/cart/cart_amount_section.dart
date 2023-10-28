import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/cart/cart_bloc.dart';
import 'package:shop_mate/presentation/checkout/checkout_screen.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/row_widget.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class CartAmountSection extends StatelessWidget {
  const CartAmountSection({
    super.key,
  }); // Constructor for the CartAmountSection widget.

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return SizedBox(
            width: double.infinity,
            height: .5.sh,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const BuildRegularTextWidget(
                      text: "Price Details"), // Display the section title.

                  // Display the subtotal with its value.
                  BuildTextRow(
                    text1: const BuildRegularTextWidget(
                      text: 'Subtotal:',
                      fontSize: 15,
                    ),
                    text2: BuildRegularTextWidget(
                      text: '\$${state.cart.subTotal.round()}',
                      fontSize: 15,
                    ),
                  ),

                  // Display the delivery fee with its value.
                  BuildTextRow(
                    text1: const BuildRegularTextWidget(
                      text: 'Delivery Fee:',
                      fontSize: 15,
                    ),
                    text2: BuildRegularTextWidget(
                      text: '\$${state.cart.totalDeliveryFee.round()}',
                      fontSize: 15,
                    ),
                  ),

                  // Display the discount with its value.
                  BuildTextRow(
                    text1: const BuildRegularTextWidget(
                      text: 'Discount:',
                      fontSize: 15,
                    ),
                    text2: BuildRegularTextWidget(
                      text: '\$${state.cart.totalDiscount.round()}',
                      fontSize: 15,
                    ),
                  ),

                  // Display the total price with its value.
                  BuildTextRow(
                    text1: const BuildRegularTextWidget(text: "Total:"),
                    text2: BuildHeadingText(
                        text: "\$${state.cart.totalPrice.round()}"),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(buildNavigation(
                          route:
                              const CheckoutScreen())); // Navigate to the checkout screen on tap.
                    },
                    child: BuildButtonWidget(
                      text: 'Continue',
                      onTap: () {
                        Navigator.of(context).push(buildNavigation(
                            route:
                                const CheckoutScreen())); // Navigate to the checkout screen on button press.
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

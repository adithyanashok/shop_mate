import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/address/address_bloc.dart';
import 'package:shop_mate/application/bottom_nav/bottom_nav_bloc.dart';
import 'package:shop_mate/application/cart/cart_bloc.dart';
import 'package:shop_mate/presentation/cart/cart_amount_section.dart';
import 'package:shop_mate/presentation/cart/cart_product_section.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/main_page.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  String? userId = FirebaseAuth.instance.currentUser
      ?.uid; // Get the current user's ID, which can be null.

  @override
  Widget build(BuildContext context) {
    // Trigger the CartBloc to fetch the user's cart data.
    BlocProvider.of<CartBloc>(context)
        .add(CartEvent.getCart(userId: userId!, context: context));

    // Trigger the AddressBloc to fetch the user's address data.
    BlocProvider.of<AddressBloc>(context)
        .add(AddressEvent.getAddress(userId: userId!, context: context));

    return Scaffold(
      appBar: AppBar(
        title: const BuildRegularTextWidget(
            text: 'Cart'), // Set the app bar title.
        centerTitle: true, // Center the app bar title.
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return SafeArea(
            // Display an image if the cart is empty.
            child: state.cart.products.isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/cart-is-empty.png"),
                      const BuildRegularTextWidget(
                        text: "Your cart is empty!",
                        fontWeight: FontWeight.w300,
                      ),
                      const BuildRegularTextWidget(
                        text:
                            "Your cart is currently empty. Explore our wide range of products and start adding items to your cart to begin your shopping journey!",
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BuildMediumButton(
                        backgroundColor: AppColor.greenColor,
                        textColor: AppColor.whiteColor,
                        text: "Explore",
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                context.read<BottomNavBloc>().add(
                                      const BottomNavEvent.homeEvent(value: 0),
                                    );
                                return const MainPage();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  )
                : Column(
                    children: [
                      // Display the cart product section.
                      CartProductSection(),

                      // Display the cart amount section.
                      const CartAmountSection()
                    ],
                  ),
          );
        },
      ),
    );
  }
}

class CartQtyButton extends StatelessWidget {
  const CartQtyButton({
    super.key,
    required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: AppColor.greenColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Icon(
          icon,
          size: 15,
          color: AppColor.whiteColor,
        ),
      ),
    );
  }
}

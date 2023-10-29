import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/address/address_bloc.dart';
import 'package:shop_mate/application/cart/cart_bloc.dart';
import 'package:shop_mate/presentation/cart/cart_amount_section.dart';
import 'package:shop_mate/presentation/cart/cart_product_section.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
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
                ? Center(
                    child: Image.asset('assets/images/cart-is-empty.png'),
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

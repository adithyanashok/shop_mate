import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/cart/cart_bloc.dart';
import 'package:shop_mate/domain/cart/model/cart_model.dart';
import 'package:shop_mate/presentation/checkout/checkout_screen.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/row_widget.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  String? userId = FirebaseAuth.instance.currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CartBloc>(context)
        .add(CartEvent.getCart(userId: userId!, context: context));
    return Scaffold(
      appBar: AppBar(
        title: const BuildRegularTextWidget(text: 'Cart'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          CartProductSection(),
          const Divider(
            color: AppColor.greenColor,
            thickness: 3,
          ),
          const CartAmountSection()
        ],
      )),
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
                  const BuildRegularTextWidget(text: "Price Details"),
                  BuildTextRow(
                    text1: const BuildRegularTextWidget(
                      text: 'Delivery Fee:',
                      fontSize: 15,
                    ),
                    text2: BuildRegularTextWidget(
                      text: '\$${state.cart.totalDeliveryFee}',
                      fontSize: 15,
                    ),
                  ),
                  BuildTextRow(
                    text1: const BuildRegularTextWidget(
                      text: 'Discount:',
                      fontSize: 15,
                    ),
                    text2: BuildRegularTextWidget(
                      text: '\$${state.cart.totalDiscount}',
                      fontSize: 15,
                    ),
                  ),
                  BuildTextRow(
                    text1: const BuildRegularTextWidget(text: "Total:"),
                    text2: BuildHeadingText(text: "\$${state.cart.totalPrice}"),
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
          );
        },
      ),
    );
  }
}

class CartProductSection extends StatelessWidget {
  CartProductSection({
    super.key,
  });

  String? userId = FirebaseAuth.instance.currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          height: 0.4.sh,
          child: ListView.separated(
            itemBuilder: (context, index) {
              final product = state.cart.products[index];
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Image.network(
                        product['image'],
                        width: 80,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BuildSmallText(text: product['name']),
                          SizedBox(
                            width: 0.5.sw,
                            child: BuildSmallText(
                              text: product['description'],
                              color: AppColor.colorGrey1,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      return Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              BlocProvider.of<CartBloc>(context)
                                  .add(CartEvent.incrementQty(
                                      cartModel: CartModel(
                                        userId: userId!,
                                        totalPrice: state.cart.totalPrice,
                                        products: [
                                          {
                                            "name": product['name'],
                                            "description":
                                                product['description'],
                                            "category": product['category'],
                                            "amount": product['amount'],
                                            "quantity": product['quantity'],
                                            "image": product['image'],
                                            "deliveryFee": 10,
                                            "discount": 50,
                                          }
                                        ],
                                        totalDeliveryFee: 10,
                                        totalDiscount: 50,
                                      ),
                                      type: 'inc',
                                      context: context));
                            },
                            child: Container(
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
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(product['quantity'].toString()),
                          ),
                          GestureDetector(
                            onTap: () {
                              BlocProvider.of<CartBloc>(context)
                                  .add(CartEvent.incrementQty(
                                      cartModel: CartModel(
                                        userId: userId!,
                                        totalPrice: state.cart.totalPrice,
                                        products: [
                                          {
                                            "name": product['name'],
                                            "description":
                                                product['description'],
                                            "category": product['category'],
                                            "amount": product['amount'],
                                            "quantity": product['quantity'],
                                            "image": product['image'],
                                            "deliveryFee": 10,
                                            "discount": 50,
                                          }
                                        ],
                                        totalDeliveryFee: 10,
                                        totalDiscount: 50,
                                      ),
                                      type: 'dec',
                                      context: context));
                            },
                            child: Container(
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
                          ),
                        ],
                      );
                    },
                  )
                ],
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                color: AppColor.greenColor,
              );
            },
            itemCount: state.cart.products.length,
          ),
        );
      },
    );
  }
}

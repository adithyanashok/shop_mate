import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:shop_mate/application/cart/cart_bloc.dart';
import 'package:shop_mate/application/orders/orders_bloc.dart';
import 'package:shop_mate/application/user/user_bloc.dart';
import 'package:shop_mate/domain/order/model/order_model.dart';
import 'package:shop_mate/domain/payments/payments.dart';
import 'package:shop_mate/presentation/checkout/checkout_screens_widgets/checkout_screen_widgets.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/asset_card.dart';
import 'package:shop_mate/presentation/widgets/row_widget.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({super.key, required this.selectedAddress});

  final String selectedAddress;
  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  int addressCount = 3;
  String? userId = FirebaseAuth.instance.currentUser?.uid;

  late Razorpay _razorpay;
  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
  }

  @override
  Widget build(BuildContext context) {
    final user = BlocProvider.of<UserBloc>(context).state.user;
    return Scaffold(
      appBar: AppBar(
        title: const BuildRegularTextWidget(text: "Order Summary"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          BlocBuilder<CartBloc, CartState>(
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
                              height: 80,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BuildSmallText(text: product['name']),
                                SizedBox(
                                  width: 0.7.sw,
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
          ),
          BuildAddressCard(
            title: "Shipping address",
            text: widget.selectedAddress,
            showRadioButton: false,
            showActionButton: false,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: BuildHeadingText(text: "Payment Methods"),
          ),
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () async {
                      await Payments(
                        orderModel: OrderModel(
                          userId: userId!,
                          totalPrice: state.cart.totalPrice,
                          subTotal: state.cart.subTotal,
                          totalDeliveryFee: state.cart.totalDeliveryFee,
                          totalDiscount: state.cart.totalDiscount,
                          products: state.cart.products,
                          orderDate: DateTime.now(),
                          shippingAddress: widget.selectedAddress,
                          status: 'Pending',
                        ),
                      ).makePayment(
                        context,
                        state.cart.totalPrice.round().toString(),
                        userId,
                        OrderModel(
                          userId: userId!,
                          totalPrice: state.cart.totalPrice,
                          subTotal: state.cart.subTotal,
                          totalDeliveryFee: state.cart.totalDeliveryFee,
                          totalDiscount: state.cart.totalDiscount,
                          products: state.cart.products,
                          orderDate: DateTime.now(),
                          shippingAddress: widget.selectedAddress,
                          status: 'Pending',
                        ),
                      );
                    },
                    child: BuildAssetCard(
                      asset: SvgPicture.asset(
                        'assets/images/stripe-v2.svg',
                        width: 55,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Payments(
                        orderModel: OrderModel(
                          userId: userId!,
                          totalPrice: state.cart.totalPrice,
                          subTotal: state.cart.subTotal,
                          totalDeliveryFee: state.cart.totalDeliveryFee,
                          totalDiscount: state.cart.totalDiscount,
                          products: state.cart.products,
                          orderDate: DateTime.now(),
                          shippingAddress: widget.selectedAddress,
                          status: 'Pending',
                        ),
                      ).openCheckout(
                        state.cart.totalPrice.round().toString(),
                        _razorpay,
                        OrderModel(
                          userId: userId!,
                          totalPrice: state.cart.totalPrice,
                          subTotal: state.cart.subTotal,
                          totalDeliveryFee: state.cart.totalDeliveryFee,
                          totalDiscount: state.cart.totalDiscount,
                          products: state.cart.products,
                          orderDate: DateTime.now(),
                          shippingAddress: widget.selectedAddress,
                          status: 'Pending',
                        ),
                        user.username,
                        user.email,
                        context,
                      );
                    },
                    child: BuildAssetCard(
                      asset: SvgPicture.asset(
                        'assets/images/razorpay.svg',
                        width: 55,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      BlocProvider.of<OrdersBloc>(context).add(
                        OrdersEvent.placeOrder(
                          orderModel: OrderModel(
                            userId: userId!,
                            totalPrice: state.cart.totalPrice,
                            subTotal: state.cart.subTotal,
                            totalDeliveryFee: state.cart.totalDeliveryFee,
                            totalDiscount: state.cart.totalDiscount,
                            products: state.cart.products,
                            orderDate: DateTime.now(),
                            shippingAddress: widget.selectedAddress,
                            status: 'Pending',
                          ),
                          context: context,
                        ),
                      );
                    },
                    child: BuildAssetCard(
                      asset: Image.asset(
                        'assets/images/cashondel.png',
                        width: 55,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Expanded(
            child: Card(
              surfaceTintColor: AppColor.whiteColor,
              elevation: 2,
              child: BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  final cart = state.cart;
                  return Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const BuildHeadingText(text: "Price Details"),
                        BuildTextRow(
                          text1: const BuildRegularTextWidget(
                            text: "Total Products:",
                            fontSize: 15,
                          ),
                          text2: BuildRegularTextWidget(
                            text: "${cart.products.length}",
                            fontSize: 15,
                          ),
                        ),
                        BuildTextRow(
                          text1: const BuildRegularTextWidget(
                            text: "Subtotal:",
                            fontSize: 15,
                          ),
                          text2: BuildRegularTextWidget(
                            text: "\$${cart.subTotal}",
                            fontSize: 15,
                          ),
                        ),
                        BuildTextRow(
                          text1: const BuildRegularTextWidget(
                            text: "Delivery Fee:",
                            fontSize: 15,
                          ),
                          text2: BuildRegularTextWidget(
                            text: "\$${cart.totalDeliveryFee}",
                            fontSize: 15,
                          ),
                        ),
                        BuildTextRow(
                          text1: const BuildRegularTextWidget(
                            text: "Discount:",
                            fontSize: 15,
                          ),
                          text2: BuildRegularTextWidget(
                            text: "\$${cart.totalDiscount}",
                            fontSize: 15,
                          ),
                        ),
                        BuildTextRow(
                          text1: const BuildRegularTextWidget(
                            text: "Total:",
                            fontSize: 20,
                          ),
                          text2: BuildHeadingText(text: "\$${cart.totalPrice}"),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      )),
    );
  }

  // Handle successful payment response
  void handlePaymentSuccess(PaymentSuccessResponse response) async {
    final state = BlocProvider.of<CartBloc>(context).state.cart;
    Payments(
      orderModel: OrderModel(
          userId: userId!,
          totalPrice: state.totalPrice,
          subTotal: state.subTotal,
          totalDeliveryFee: state.totalDeliveryFee,
          totalDiscount: state.totalDiscount,
          products: state.products,
          orderDate: DateTime.now(),
          shippingAddress: widget.selectedAddress,
          status: 'Pending'),
    ).placeOrder(context);
  }

// Handle payment failure response
  void handlePaymentError(PaymentFailureResponse response) {
    log("response ${response.message}");
    // Handle payment failure
  }

// Handle external wallet response
  void handleExternalWallet(ExternalWalletResponse response) {
    log(response.toString());
    log("response ${response.walletName}");
    // Handle external wallet
  }
}

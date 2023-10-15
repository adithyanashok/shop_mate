// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay/pay.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:shop_mate/application/address/address_bloc.dart';
import 'package:shop_mate/application/cart/cart_bloc.dart';
import 'package:shop_mate/application/orders/orders_bloc.dart';
import 'package:shop_mate/application/user/user_bloc.dart';
import 'package:shop_mate/domain/address/model/address_model.dart';
import 'package:shop_mate/domain/order/model/order_model.dart';
import 'package:shop_mate/domain/payments/default_payment_profile_google_pay.dart';
import 'package:shop_mate/domain/payments/payments.dart';
import 'package:shop_mate/presentation/checkout/checkout_screens_widgets/checkout_screen_widgets.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';
import 'package:shop_mate/presentation/widgets/asset_card.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/row_widget.dart';
import 'package:shop_mate/presentation/widgets/text_form_field_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class CheckoutScreen extends StatefulWidget {
  CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int addressCount = 3;
  String? selectedAddress;
  String? userId = FirebaseAuth.instance.currentUser?.uid;

  String? title;
  late Razorpay _razorpay;
  String? address;
  final _paymentItems = <PaymentItem>[];
  late final Future<PaymentConfiguration> _googlePayConfigFuture;
  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
    _googlePayConfigFuture = PaymentConfiguration.fromAsset(
        'default_payment_profile_google_pay.json');
    // Set the default value here, e.g., the first address in the list
    if (BlocProvider.of<AddressBloc>(context)
        .state
        .addressModelList
        .isNotEmpty) {
      selectedAddress = BlocProvider.of<AddressBloc>(context)
          .state
          .addressModelList[0]
          .address;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Initialize payment items for Google Pay
    BlocProvider.of<AddressBloc>(context)
        .add(AddressEvent.getAddress(userId: userId!, context: context));
    final user = BlocProvider.of<UserBloc>(context).state.user;
    log("USER ==> ${user.username}");
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
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return SimpleDialog(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            title: const Text("Add Shipping address"),
                            children: [
                              BuildTextFormField(
                                label: "Title",
                                hintText: "Home",
                                icon: Icons.home,
                                func: (value) {
                                  title = value;
                                },
                              ),
                              BuildTextAreaField(
                                label: "Address",
                                hintText: 'Enter Address',
                                icon: Icons.location_city_rounded,
                                func: (value) {
                                  address = value;
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              BlocBuilder<AddressBloc, AddressState>(
                                builder: (context, state) {
                                  return BuildButtonWidget(
                                    text: "Done",
                                    state: state,
                                    onTap: () {
                                      addAddress(context);
                                    },
                                  );
                                },
                              )
                            ],
                          );
                        },
                      );
                    },
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
              child: BlocBuilder<AddressBloc, AddressState>(
                builder: (context, state) {
                  return ListView.separated(
                    itemBuilder: (context, index) {
                      final address = state.addressModelList[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: BuildAddressCard(
                          key: Key(address.title),
                          title: address.title,
                          text: address.address,
                          onChanged: (value) {
                            setState(() {
                              selectedAddress = value;
                            });
                          },
                          selectedValue: selectedAddress,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: state.addressModelList.length,
                  );
                },
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
                  BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      _paymentItems.add(PaymentItem(
                          amount: state.cart.totalPrice.toString(),
                          label: 'Product'));

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
                                  shippingAddress: selectedAddress!,
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
                                  shippingAddress: selectedAddress!,
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
                                  shippingAddress: selectedAddress!,
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
                                  shippingAddress: selectedAddress!,
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
                          BuildAssetCard(
                            asset: Image.asset(
                              'assets/images/google.com.png',
                              width: 55,
                            ),
                          ),
                          // GestureDetector(
                          //   onTap: () async {
                          //     BlocProvider.of<OrdersBloc>(context).add(
                          //       OrdersEvent.placeOrder(
                          //         orderModel: OrderModel(
                          //           userId: userId!,
                          //           totalPrice: state.cart.totalPrice,
                          //           subTotal: state.cart.subTotal,
                          //           totalDeliveryFee:
                          //               state.cart.totalDeliveryFee,
                          //           totalDiscount: state.cart.totalDiscount,
                          //           products: state.cart.products,
                          //           orderDate: DateTime.now(),
                          //           shippingAddress: selectedAddress!,
                          //           status: 'Pending',
                          //         ),
                          //         context: context,
                          //       ),
                          //     );
                          //   },
                          //   child: BuildAssetCard(
                          //     asset: Image.asset(
                          //       'assets/images/cashondel.png',
                          //       width: 55,
                          //     ),
                          //   ),
                          // ),
                          // Google Pay Button
                          GooglePayButton(
                            paymentConfiguration:
                                PaymentConfiguration.fromJsonString(
                                    defaultGooglePay),
                            paymentItems: _paymentItems,
                            type: GooglePayButtonType.buy,
                            margin: const EdgeInsets.only(top: 15.0),
                            onPaymentResult: (value) {
                              log(value.toString());
                            },
                            loadingIndicator: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                  // Google Pay Button

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
                                  text2: BuildHeadingText(
                                      text: "\$${cart.totalPrice}"),
                                ),
                              ],
                            ),
                          );
                        },
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

  void addAddress(BuildContext context) {
    if (title != null || address != null) {
      BlocProvider.of<AddressBloc>(context).add(
        AddressEvent.addAddress(
          addressModel: AddressModel(
            userId: userId!,
            title: title!,
            address: address!,
          ),
          context: context,
        ),
      );
      BlocProvider.of<AddressBloc>(context)
          .add(AddressEvent.getAddress(userId: userId!, context: context));
    } else {
      snackBar(context: context, msg: "Please fill the form");
    }
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
          shippingAddress: selectedAddress!,
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

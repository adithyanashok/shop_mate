// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:shop_mate/application/address/address_bloc.dart';
import 'package:shop_mate/application/cart/cart_bloc.dart';
import 'package:shop_mate/domain/order/model/order_model.dart';
import 'package:shop_mate/domain/payments/payments.dart';
import 'package:shop_mate/presentation/checkout/checkout_screens_widgets/checkout_screen_widgets.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/order/order_summary.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';
import 'package:shop_mate/presentation/widgets/address_widgets.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen(
      {super.key}); // Constructor for the CheckoutScreen widget.

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int addressCount = 3; // Initialize the address count.
  String? selectedAddress; // Initialize the selected shipping address as null.
  String? userId = FirebaseAuth.instance.currentUser
      ?.uid; // Get the current user's ID, which can be null.

  late Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);

    // Set the default value here, e.g., the first address in the list
    final addressIsNotEmpty =
        BlocProvider.of<AddressBloc>(context).state.addressModelList.isNotEmpty;
    if (addressIsNotEmpty) {
      selectedAddress = BlocProvider.of<AddressBloc>(context)
          .state
          .addressModelList[0]
          .address;
    }
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AddressBloc>(context)
        .add(AddressEvent.getAddress(userId: userId!, context: context));
    return Scaffold(
      appBar: AppBar(
        title: const BuildRegularTextWidget(
            text: 'Address'), // Set the app bar title.
        centerTitle: true, // Center the app bar title.
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BuildHeadingText(
                      text:
                          "Shipping Address"), // Display the "Shipping Address" heading.
                  IconButton(
                    onPressed: () {
                      addressDialog(context,
                          userId!); // Show an address input dialog on button press.
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
                          ));
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
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: BuildButtonWidget(
                text: "Continue", // Display a "Continue" button.
                onTap: () {
                  Navigator.of(context).push(
                    buildNavigation(
                      route: OrderSummary(
                        selectedAddress: selectedAddress!,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
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
          shippingAddress: selectedAddress!,
          status: 'Pending'),
    ).placeOrder(context);
  }

  // Handle payment failure response
  void handlePaymentError(PaymentFailureResponse response) {
    snackBar(context: context, msg: response.message.toString());
    // Handle payment failure
  }

  // Handle external wallet response
  void handleExternalWallet(ExternalWalletResponse response) {
    snackBar(context: context, msg: response.walletName.toString());
    // Handle external wallet
  }
}

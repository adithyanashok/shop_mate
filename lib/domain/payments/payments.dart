import 'dart:convert';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;
import 'package:shop_mate/application/orders/orders_bloc.dart';
import 'package:shop_mate/domain/core/api/api.dart';
import 'package:shop_mate/domain/order/model/order_model.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Payments {
  final OrderModel? orderModel;

  Payments({this.orderModel});
  //<=============================Stripe Payment=====================================>
  // Function to initiate the payment process using Stripe
  Future<void> makePayment(context, amount, userId, OrderModel order) async {
    try {
      Map<String, dynamic>? paymentIntentData;
      // Create a payment intent using Stripe API
      paymentIntentData = await createPaymentIntent(amount, "USD");
      // Initialize the Stripe payment sheet
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntentData!['client_secret'],
          googlePay: const PaymentSheetGooglePay(merchantCountryCode: 'US'),
          merchantDisplayName: 'T',
        ),
      );

      // Display the payment sheet to the user
      await displayPaymentSheet(context, paymentIntentData, userId);
      BlocProvider.of<OrdersBloc>(context).add(
        OrdersEvent.placeOrder(orderModel: order, context: context),
      );
    } catch (e) {
      log("Exception at makePayment(): $e");
    }
  }

  // Function to display the Stripe payment sheet to the user
  displayPaymentSheet(context, paymentIntentData, userId) async {
    try {
      await Stripe.instance.presentPaymentSheet().then((newValue) {
        final paymentId = paymentIntentData!['id'];
        log('payment intentsss ${paymentIntentData!['id']}');
        log('payment intent $paymentIntentData');

        snackBar(context: context, msg: "Payment Completed");

        paymentIntentData = null;
      }).onError((error, stackTrace) {
        log('Exception/DISPLAYPAYMENTSHEET==> $error $stackTrace');
        snackBar(context: context, msg: "Cancelled");
      });
    } on StripeException catch (_) {
      snackBar(context: context, msg: "Cancelled");
    } catch (e) {
      log('$e');
    }
  }

  // Function to create a payment intent using the Stripe API
  createPaymentIntent(String amount, String currency) async {
    try {
      Map<String, dynamic> body = {
        'amount': calculateAmount(amount),
        'currency': currency,
        'payment_method_types[]': 'card',
      };
      var response = await http.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        body: body,
        headers: {
          'Authorization': 'Bearer ${Api.stripeSk}',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      );
      log('Create Intent reponse ===> ${response.body.toString()}');
      return jsonDecode(response.body.toString());
    } catch (e) {
      log("Exception at createPaymentIntent(): ${e.toString()}");
    }
  }

  //<=============================Razorpay Payment=====================================>
  // Function to initiate the Razorpay payment process
  void openCheckout(amount, razorpay, order, name, email, context) async {
    final user = FirebaseAuth.instance.currentUser;
    log(user.toString());

    // Prepare payment options
    var options = {
      'key': 'rzp_test_fRFxOcDMGdbCCv',
      'amount': calculateAmount(
          amount), // amount in paise (e.g., for INR 100, it's 100 * 100)
      'name': name,
      'description': 'Test Payment',
      'prefill': {'email': email, 'prefillEmail': email},
    };

    try {
      // Open the Razorpay payment window with the provided options
      await razorpay.open(options);
    } catch (e) {
      log('Error: $e');
    }
  }

  void placeOrder(context) {
    BlocProvider.of<OrdersBloc>(context)
        .add(OrdersEvent.placeOrder(orderModel: orderModel!, context: context));
  }

  // Function to convert the amount to the format expected by StripeBlocProvider.of<OrdersBloc>(context)
  //     .add(OrdersEvent.placeOrder(orderModel: orderModel, context: context));
  calculateAmount(String amount) {
    final data = int.parse(amount) * 100;
    return data.toString();
  }
}

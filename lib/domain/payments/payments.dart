import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;
import 'package:shop_mate/application/orders/orders_bloc.dart';
import 'package:shop_mate/domain/core/api/api.dart';
import 'package:shop_mate/domain/order/model/order_model.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';

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
      await displayPaymentSheet(context, paymentIntentData, userId, order);
    } catch (e) {
      snackBar(context: context, msg: "Something went wrong...");
    }
  }

  // Function to display the Stripe payment sheet to the user
  displayPaymentSheet(context, paymentIntentData, userId, order) async {
    try {
      await Stripe.instance.presentPaymentSheet().then((newValue) {
        snackBar(context: context, msg: "Payment Completed");
        BlocProvider.of<OrdersBloc>(context).add(
          OrdersEvent.placeOrder(orderModel: order, context: context),
        );
        paymentIntentData = null;
      }).onError((error, stackTrace) {
        snackBar(context: context, msg: "Cancelled");
      });
    } on StripeException catch (_) {
      snackBar(context: context, msg: "Cancelled");
    } catch (e) {
      snackBar(context: context, msg: "Something went wrong...");
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

      return jsonDecode(response.body.toString());
    } catch (e) {
      //
    }
  }

  //<=============================Razorpay Payment=====================================>
  // Function to initiate the Razorpay payment process
  void openCheckout(amount, razorpay, order, name, email, context) async {
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
      snackBar(context: context, msg: "Something went wrong...");
    }
  }

  void placeOrder(context) {
    BlocProvider.of<OrdersBloc>(context).add(
      OrdersEvent.placeOrder(
        orderModel: orderModel!,
        context: context,
      ),
    );
  }

  calculateAmount(String amount) {
    final data = int.parse(amount) * 100;
    return data.toString();
  }
}

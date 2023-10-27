import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/application/cart/cart_bloc.dart';
import 'package:shop_mate/domain/cart/i_cart_facade.dart';
import 'package:shop_mate/domain/cart/model/cart_model.dart';
import 'package:shop_mate/domain/core/collections/collections.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';

@LazySingleton(as: ICartFacade)
class CartRepositary implements ICartFacade {
  @override
  Future<Either<MainFailure, CartModel>> addToCart(
      CartModel cartModel, context) async {
    try {
      final db = FirebaseFirestore.instance;
      final docRef = await db
          .collection(Collection.collectionCart)
          .doc(cartModel.userId)
          .get();

      // Retrieve the document data from Firestore
      // var docData = await docRef.get();

      log(docRef.id.toString());
      if (docRef.data() != null) {
        log("called docData.data != null");
        final cart = CartModel.fromJson(docRef.data()!);
        final state = BlocProvider.of<CartBloc>(context).state;

        log("${cart.totalDeliveryFee} ${cartModel.products[0]['amount']}");

        log("${cartModel}");
        await db
            .collection(Collection.collectionCart)
            .doc(cartModel.userId)
            .update({
          "products": FieldValue.arrayUnion(cartModel.products),
          "totalPrice": cart.totalPrice +
              cartModel.products[0]['deliveryFee'] +
              cartModel.totalPrice,
          "totalDeliveryFee":
              cart.totalDeliveryFee + cartModel.products[0]['deliveryFee'],
          "totalDiscount":
              cart.totalDiscount + cartModel.products[0]['discount'],
          "subTotal": cart.subTotal + cartModel.products[0]['amount'],
        });
      } else {
        log("called docData.data != null else");
        cartModel = cartModel.copyWith(
          totalPrice:
              cartModel.totalPrice + cartModel.products[0]['deliveryFee'],
          totalDeliveryFee: cartModel.totalDeliveryFee,
          totalDiscount: cartModel.totalDiscount,
          subTotal: cartModel.subTotal,
        );
        await db
            .collection(Collection.collectionCart)
            .doc(cartModel.userId)
            .set(cartModel.toJson());
      }
      snackBar(context: context, success: true, msg: "Added to cart");

      return Right(cartModel);
    } catch (e) {
      snackBar(context: context, msg: e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, CartModel>> getCart(String userId, context) async {
    try {
      final db = FirebaseFirestore.instance;
      final docRef = db.collection(Collection.collectionCart).doc(userId);

      // Retrieve the document data from Firestore
      var docData = await docRef.get();

      if (docData.data() != null) {
        // Check if the 'products' field is empty in the document
        if (docData.data()?['products'].isEmpty) {
          // If it's empty, update the document with initial values for cart properties
          await docRef.update({
            "totalPrice": 0,
            "subTotal": 0,
            "totalDeliveryFee": 0,
            "totalDiscount": 0,
          });
        }
      }

      if (docData.exists) {
        for (var cartProducts in docData.data()?['products']) {
          double total = 0;
          final dd = docData.data()?['totalPrice'] += cartProducts['amount'];
          print("get Cart: $dd");
        }
        // If the document exists, parse it as a CartModel
        final cart = CartModel.fromJson(docData.data()!).copyWith();
        return Right(cart);
      } else {
        // If the document doesn't exist, return an empty CartModel
        return const Right(CartModel(
          userId: '',
          totalPrice: 0,
          products: [],
          totalDeliveryFee: 0,
          totalDiscount: 0,
          subTotal: 0,
        ));
      }
    } catch (e) {
      // Handle any exceptions and display an error message in a snackbar
      // log('error at getCart $e');
      snackBar(context: context, msg: e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, bool>> updateCart(
    CartModel cartModel,
    String type,
    context,
  ) async {
    try {
      final db = FirebaseFirestore.instance;
      final cartReference =
          db.collection(Collection.collectionCart).doc(cartModel.userId);

      // Retrieve the current array of products from Firestore
      final cartDoc = await cartReference.get();
      final List<Map<String, dynamic>> existingProducts =
          List<Map<String, dynamic>>.from(cartDoc.data()!['products']);

      if (type == 'inc') {
        // Find the index of the specific product in the existing products list
        final productIndex = existingProducts.indexWhere((product) =>
            product['productId'] == cartModel.products[0]['productId']);

        if (productIndex != -1) {
          // Increment the quantity of the specific product
          existingProducts[productIndex]['quantity'] += 1;

          // Update the total price based on the updated quantity
          cartModel = cartModel.copyWith(
            products: existingProducts,
            totalPrice:
                cartModel.totalPrice + existingProducts[productIndex]['amount'],
            subTotal: cartModel.subTotal,
          );

          // Update the specific product in Firestore
          await cartReference.update({
            "products": existingProducts,
            "totalPrice": cartModel.totalPrice,
            "subTotal": cartModel.subTotal,
          });
        }
      } else if (type == 'dec') {
        // Find the index of the specific product in the existing products list
        final productIndex = existingProducts.indexWhere((product) =>
            product['productId'] == cartModel.products[0]['productId']);

        if (productIndex != -1 &&
            existingProducts[productIndex]['quantity'] > 1) {
          // Decrement the quantity of the specific product
          existingProducts[productIndex]['quantity'] -= 1;

          // Update the total price based on the updated quantity
          cartModel = cartModel.copyWith(
            products: existingProducts,
            totalPrice:
                cartModel.totalPrice - existingProducts[productIndex]['amount'],
            subTotal: cartModel.subTotal,
          );

          // Update the specific product in Firestore
          await cartReference.update({
            "products": existingProducts,
            "totalPrice": cartModel.totalPrice,
            "subTotal": cartModel.subTotal,
          });
        }
      }

      // Dispatch an event to update the cart state
      BlocProvider.of<CartBloc>(context)
          .add(CartEvent.getCart(userId: cartModel.userId, context: context));

      return const Right(true);
    } catch (e) {
      // Handle any exceptions and display an error message in a snackbar
      // log(e.toString());
      snackBar(context: context, msg: e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, bool>> deleteProduct(
    CartModel cartModel,
    context,
  ) async {
    try {
      final db = FirebaseFirestore.instance;
      final cartReference =
          db.collection(Collection.collectionCart).doc(cartModel.userId);

      // Retrieve the current array of products from Firestore
      final cartDoc = await cartReference.get();
      final cartData = cartDoc.data();
      final List<Map<String, dynamic>> existingProducts =
          List<Map<String, dynamic>>.from(cartDoc.data()!['products']);

      // Find the index of the product to be removed
      final productIndex = existingProducts.indexWhere((product) =>
          product['productId'] == cartModel.products[0]['productId']);

      if (cartData?['products'].isEmpty) {
        // Update cart fields to default values if the products list is empty
        await cartReference.update({
          "totalPrice": 0,
          "subTotal": 0,
          "totalDeliveryFee": 0,
          "totalDiscount": 0,
        });
      }

      if (productIndex != -1) {
        // Get the product that is being removed
        final removedProduct = existingProducts[productIndex];

        // Calculate the amount to subtract from the total price
        final removedAmount =
            removedProduct['amount'] * removedProduct['quantity'];
        log("${cartData?['subTotal'] - removedAmount}");
        // Calculate the new values for total delivery fee and total discount
        final totalDeliverFee =
            cartData?['totalDeliveryFee'] - removedProduct['deliveryFee'];

        final totalDiscount =
            cartData?['totalDiscount'] - removedProduct['discount'];

        final amount = removedAmount + removedProduct['deliveryFee'];
        final totalPrice = cartData?['totalPrice'] - amount;
        final subTotal = cartData?['subTotal'] - removedProduct['amount'];

        // Update the specific product in Firestore and the other fields
        await cartReference.update({
          "products": FieldValue.arrayRemove([removedProduct]),
          "totalPrice": totalPrice,
          "subTotal": subTotal,
          "totalDeliveryFee": totalDeliverFee,
          "totalDiscount": totalDiscount,
        });

        // Dispatch an event to update the cart state
        BlocProvider.of<CartBloc>(context)
            .add(CartEvent.getCart(userId: cartModel.userId, context: context));

        return const Right(true);
      } else {
        snackBar(
            context: context, msg: "Product not found in existingProducts");

        return const Right(false); // Indicate that the product was not found
      }
    } catch (e) {
      snackBar(context: context, msg: e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}

// Calculate the total price for the product being added
      // double productTotalPrice = cartModel.products.fold<double>(
      //   0,
      //   (previousTotal, product) =>
      //       previousTotal + (product['amount'] as double),
      // );
      // log("prouctTotalPrice: ${productTotalPrice}");

      // double subTotal = cartModel.products.fold<double>(
      //   0,
      //   (previousTotal, product) =>
      //       previousTotal + (product['amount']) * (product['quantity'] as int),
      // );
      // log("subtotal: ${subTotal}");

      // // Calculate the total delivery fee and total discount for the entire cart
      // double totalDeliveryFee = cartModel.products.fold<double>(
      //   0,
      //   (previousTotal, product) => previousTotal + (product['deliveryFee']),
      // );
      // log("totaldelivery fee init: ${totalDeliveryFee}");

      // double totalDiscount = cartModel.products.fold<double>(
      //   0,
      //   (previousTotal, product) => previousTotal + (product['discount']),
      // );

      // final productWithDiscont = cartModel.products[0]['deliveryFee'] -
      //     cartModel.products[0]['discount'];
      // log("product with discount: ${productWithDiscont}");

      // // Fetch cart
      // final currentCart = await db
      //     .collection(Collection.collectionCart)
      //     .doc(cartModel.userId)
      //     .get();
      // final cart = CartModel.fromJson(currentCart.data()!);
      // final totalFromCart = cart.totalPrice + cartModel.totalPrice;
      // log("totalFromCart: ${totalFromCart}");

      // // Check there is a cart
      // if (currentCart.data() != null) {
      //   final cart = CartModel.fromJson(currentCart.data()!);
      //   // Update the total delivery fee
      //   totalDeliveryFee = cart.totalDeliveryFee + totalDeliveryFee;
      //   log("total delivery fee: ${totalDeliveryFee}");

      //   // Update the total discount
      //   totalDiscount = cart.totalDiscount + totalDiscount;
      //   log("totalDiscount: ${totalDiscount}");

      //   // Update the total price
      //   productTotalPrice = cart.totalPrice + productTotalPrice;
      //   log("prouctTotalPrice2: ${productTotalPrice}");

      //   subTotal = cart.subTotal + subTotal;
      //   log("subTotal2: ${subTotal}");
      // }
      // double totalWithDelivery = productTotalPrice + totalDeliveryFee;
      // double totalWithDiscount = totalWithDelivery - totalDiscount;
      // double totalSubTotal = subTotal;

      // if (state.cart.products.isEmpty) {
      //   log("cartModel.totalPrice: ${cartModel.totalPrice}");
      //   log("cartModel.totalDeliveryFee: ${cartModel.totalDeliveryFee}");
      //   log("cartModel.totalDiscount: ${totalDiscount}");
      //   log("cartModel.subTotal: ${cartModel.subTotal}");
      //   // If the cart is empty, set the total price directly

      //   cartModel = cartModel.copyWith(
      //     totalPrice: cartModel.totalPrice,
      //     totalDeliveryFee: totalDeliveryFee,
      //     totalDiscount: totalDiscount,
      //     subTotal: subTotal,
      //   );
      //   await db
      //       .collection(Collection.collectionCart)
      //       .doc(cartModel.userId)
      //       .set(cartModel.toJson());
      // } else {
      //   // If the cart is not empty, update the total price, total delivery fee, and total discount
      //   final cart = CartModel.fromJson(currentCart.data()!);

      //   log("cartModel.totalPrice: ${cart.totalPrice}");
      //   log("cartModel.totalDeliveryFee: ${cartModel.totalDeliveryFee}");
      //   log("cartModel.totalDiscount: ${totalDiscount}");
      //   log("cartModel.subTotal: ${cartModel.subTotal}");
      //   await db
      //       .collection(Collection.collectionCart)
      //       .doc(cartModel.userId)
      //       .update({
      //     "products": FieldValue.arrayUnion(cartModel.products),
      //     "totalPrice": cartModel
      //         .totalPrice, // Update the total price with discount and delivery fee
      //     "totalDeliveryFee": totalDeliveryFee, // Update total delivery fee
      //     "totalDiscount": totalDiscount,
      //     "subTotal": subTotal,
      //   });
      // }

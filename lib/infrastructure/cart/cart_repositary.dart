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
      final state = BlocProvider.of<CartBloc>(context).state;

      // Calculate the total price for the product being added
      double productTotalPrice = cartModel.products.fold<double>(
        0,
        (previousTotal, product) =>
            previousTotal +
            (product['amount'] as double) * (product['quantity'] as int),
      );

      // Calculate the total delivery fee and total discount for the entire cart
      double totalDeliveryFee = cartModel.products.fold<double>(
        0,
        (previousTotal, product) => previousTotal + (product['deliveryFee']),
      );

      double totalDiscount = cartModel.products.fold<double>(
        0,
        (previousTotal, product) => previousTotal + (product['discount']),
      );
      // Fetch cart
      final currentCart = await db
          .collection(Collection.collectionCart)
          .doc(cartModel.userId)
          .get();
      // Check there is a cart
      if (currentCart.data() != null) {
        final cart = CartModel.fromJson(currentCart.data()!);
        // Update the total delivery fee
        totalDeliveryFee = cart.totalDeliveryFee + totalDeliveryFee;
        // Update the total discount
        totalDiscount = cart.totalDiscount + totalDiscount;
        // Update the total price
        productTotalPrice = cart.totalPrice + productTotalPrice;
      }
      double totalWithDelivery = productTotalPrice + totalDeliveryFee;
      double totalWithDiscount = totalWithDelivery - totalDiscount;

      if (state.cart.products.isEmpty) {
        // If the cart is empty, set the total price directly
        cartModel = cartModel.copyWith(
          totalPrice: totalWithDiscount,
          totalDeliveryFee: totalDeliveryFee,
          totalDiscount: totalDiscount,
        );
        await db
            .collection(Collection.collectionCart)
            .doc(cartModel.userId)
            .set(cartModel.toJson());
      } else {
        // If the cart is not empty, update the total price, total delivery fee, and total discount
        await db
            .collection(Collection.collectionCart)
            .doc(cartModel.userId)
            .update({
          "products": FieldValue.arrayUnion(cartModel.products),
          "totalPrice":
              totalWithDiscount, // Update the total price with discount and delivery fee
          "totalDeliveryFee": totalDeliveryFee, // Update total delivery fee
          "totalDiscount": totalDiscount, // Update total discount
        });
      }

      snackBar(context: context, msg: "Added to cart");

      return Right(cartModel);
    } catch (e) {
      log(e.toString());
      snackBar(context: context, msg: e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, CartModel>> getCart(String userId, context) async {
    try {
      final db = FirebaseFirestore.instance;
      final docRef =
          await db.collection(Collection.collectionCart).doc(userId).get();

      if (docRef.exists) {
        var doc = docRef.data();
        final cart = CartModel.fromJson(docRef.data()!);
        log(doc![0].toString());
        return Right(cart);
      } else {
        return const Right(CartModel(
            userId: '',
            totalPrice: 0,
            products: [],
            totalDeliveryFee: 0,
            totalDiscount: 0));
      }
    } catch (e) {
      log(e.toString());

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
        // Find the specific product you want to change within existingProducts
        final productIndex = existingProducts.indexWhere(
            (product) => product['name'] == cartModel.products[0]['name']);

        if (productIndex != -1) {
          // Increment the quantity of the specific product
          existingProducts[productIndex]['quantity'] += 1;

          // Update the total price based on the updated quantity
          cartModel = cartModel.copyWith(
            products: existingProducts,
            totalPrice:
                cartModel.totalPrice + existingProducts[productIndex]['amount'],
          );

          // Update the specific product in Firestore
          await cartReference.update({
            "products": existingProducts,
            "totalPrice": cartModel.totalPrice,
          });
        }
      } else if (type == 'dec') {
        // Find the specific product you want to change within existingProducts
        final productIndex = existingProducts.indexWhere(
            (product) => product['name'] == cartModel.products[0]['name']);

        if (productIndex != -1 &&
            existingProducts[productIndex]['quantity'] > 0) {
          // Decrement the quantity of the specific product
          existingProducts[productIndex]['quantity'] -= 1;

          // Update the total price based on the updated quantity
          cartModel = cartModel.copyWith(
            products: existingProducts,
            totalPrice:
                cartModel.totalPrice - existingProducts[productIndex]['amount'],
          );

          // Update the specific product in Firestore
          await cartReference.update({
            "products": existingProducts,
            "totalPrice": cartModel.totalPrice,
          });
        }
      }

      // Dispatch an event to update the cart state
      BlocProvider.of<CartBloc>(context)
          .add(CartEvent.getCart(userId: cartModel.userId, context: context));

      return const Right(true);
    } catch (e) {
      snackBar(context: context, msg: e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}

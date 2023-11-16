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
      // Initialize Firestore instance
      final db = FirebaseFirestore.instance;

      // Retrieve the user's cart document from Firestore
      final docRef = await db
          .collection(Collection.collectionCart)
          .doc(cartModel.userId)
          .get();

      // Check if the user already has a cart
      if (docRef.data() != null) {
        // If the user has a cart, update the cart with the new product

        // Deserialize the existing cart data from Firestore
        final cart = CartModel.fromJson(docRef.data()!);

        // Calculate new cart values based on the added product
        final totalPrice = cart.totalPrice +
            cartModel.products[0]['deliveryFee'] +
            cartModel.totalPrice;
        final totalDeliveryFee =
            cart.totalDeliveryFee + cartModel.products[0]['deliveryFee'];
        final totalDiscount =
            cart.totalDiscount + cartModel.products[0]['discount'];
        final subTotal = cart.subTotal + cartModel.products[0]['amount'];

        // Update the user's cart document in Firestore with new values
        await db
            .collection(Collection.collectionCart)
            .doc(cartModel.userId)
            .update({
          "products": FieldValue.arrayUnion(cartModel.products),
          "totalPrice": totalPrice,
          "totalDeliveryFee": totalDeliveryFee,
          "totalDiscount": totalDiscount,
          "subTotal": subTotal,
        });
      } else {
        // If the user doesn't have a cart, create a new cart document

        // Modify the cartModel with initial values
        cartModel = cartModel.copyWith(
          totalPrice:
              cartModel.totalPrice + cartModel.products[0]['deliveryFee'],
          totalDeliveryFee: cartModel.totalDeliveryFee,
          totalDiscount: cartModel.totalDiscount,
          subTotal: cartModel.subTotal,
        );

        // Create a new cart document in Firestore with the modified cartModel
        await db
            .collection(Collection.collectionCart)
            .doc(cartModel.userId)
            .set(cartModel.toJson());
      }

      // Show a success message using a snackbar
      snackBar(context: context, success: true, msg: "Added to cart");

      // Return the updated cartModel as a success result
      return Right(cartModel);
    } catch (e) {
      // Handle any exceptions that may occur

      // Show an error message using a snackbar with the error message
      snackBar(context: context, msg: e.toString());

      // Return a Left result indicating a client failure
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, CartModel>> getCart(String userId, context) async {
    try {
      // Initialize Firestore instance
      final db = FirebaseFirestore.instance;

      // Create a reference to the user's cart document in Firestore
      final docRef = db.collection(Collection.collectionCart).doc(userId);

      // Retrieve the document data from Firestore
      var docData = await docRef.get();

      if (docData.data() != null) {
        // Check if the 'products' field is empty in the document
        if (docData.data()?['products'].isEmpty) {
          // If it's empty, update the document with initial values for cart properties

          // Update the document to set initial values for cart properties
          await docRef.update({
            "totalPrice": 0,
            "subTotal": 0,
            "totalDeliveryFee": 0,
            "totalDiscount": 0,
          });
        }
      }

      if (docData.exists) {
        // final
        // If the document exists, parse it as a CartModel

        // Deserialize the document data and create a CartModel
        final cart = CartModel.fromJson(docData.data()!);

        // Return the CartModel as a success result
        return Right(cart);
      } else {
        // If the document doesn't exist, return an empty CartModel

        // Return an empty CartModel as a success result
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

      // Return a Left result indicating a client failure
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
      // Initialize Firestore instance
      final db = FirebaseFirestore.instance;

      // Create a reference to the user's cart document in Firestore
      final cartReference =
          db.collection(Collection.collectionCart).doc(cartModel.userId);

      // Retrieve the current array of products from Firestore
      final cartDoc = await cartReference.get();
      final List<Map<String, dynamic>> existingProducts =
          List<Map<String, dynamic>>.from(cartDoc.data()!['products']);

      if (type == 'inc') {
        // If the operation is to increment the quantity of a product

        // Find the index of the specific product in the existing products list
        final productIndex = existingProducts.indexWhere((product) =>
            product['productId'] == cartModel.products[0]['productId']);

        if (productIndex != -1) {
          // If the product is found, increment its quantity

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
        // If the operation is to decrement the quantity of a product

        // Find the index of the specific product in the existing products list
        final productIndex = existingProducts.indexWhere((product) =>
            product['productId'] == cartModel.products[0]['productId']);

        if (productIndex != -1 &&
            existingProducts[productIndex]['quantity'] > 1) {
          // If the product is found and its quantity is greater than 1, decrement its quantity

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

      // Dispatch an event to update the cart state using the BlocProvider
      BlocProvider.of<CartBloc>(context)
          .add(CartEvent.getCart(userId: cartModel.userId, context: context));

      // Return a success result indicating the update was successful
      return const Right(true);
    } catch (e) {
      // Handle any exceptions and display an error message in a snackbar
      // log(e.toString());
      snackBar(context: context, msg: e.toString());

      // Return a Left result indicating a client failure
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, bool>> deleteProduct(
    CartModel cartModel,
    context,
  ) async {
    try {
      // Initialize Firestore instance
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
        // If the products list is empty, update cart fields to default values

        // Update cart fields to default values
        await cartReference.update({
          "totalPrice": 0,
          "subTotal": 0,
          "totalDeliveryFee": 0,
          "totalDiscount": 0,
        });
      }

      if (productIndex != -1) {
        // If the product to be removed is found

        // Get the product that is being removed
        final removedProduct = existingProducts[productIndex];

        // Calculate the amount to subtract from the total price
        final removedAmount =
            removedProduct['amount'] * removedProduct['quantity'];

        // Calculate the new values for total delivery fee and total discount
        final totalDeliveryFee =
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
          "totalDeliveryFee": totalDeliveryFee,
          "totalDiscount": totalDiscount,
        });

        // Dispatch an event to update the cart state using BlocProvider
        BlocProvider.of<CartBloc>(context)
            .add(CartEvent.getCart(userId: cartModel.userId, context: context));

        // Return a success result indicating the product was successfully removed
        return const Right(true);
      } else {
        // If the product is not found in existingProducts, show an error message

        snackBar(
            context: context, msg: "Product not found in existingProducts");

        // Indicate that the product was not found
        return const Right(false);
      }
    } catch (e) {
      // Handle any exceptions and display an error message in a snackbar
      snackBar(context: context, msg: e.toString());

      // Return a Left result indicating a client failure
      return const Left(MainFailure.clientFailure());
    }
  }
}

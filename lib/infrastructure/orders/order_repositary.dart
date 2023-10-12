import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/collections/collections.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/earnings/models/earnings_model.dart';
import 'package:shop_mate/domain/notifications/notifications.dart';
import 'package:shop_mate/domain/order/i_order_facade.dart';
import 'package:shop_mate/domain/order/model/order_model.dart';
import 'package:shop_mate/infrastructure/notification/notification_repositary.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/order_successful_screen/order_successful_screen.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';

//Consolas, 'Courier New', monospace
@LazySingleton(as: IOrderFacade)
class OrderRepositary implements IOrderFacade {
  @override
  Future<Either<MainFailure, OrderModel>> placeOrder(
    OrderModel orderModel,
    BuildContext context,
  ) async {
    try {
      final db = FirebaseFirestore.instance;
      final user = await db
          .collection(Collection.collectionUser)
          .doc(orderModel.userId)
          .get();

      final userData = user.data();

      orderModel = orderModel.copyWith(
          email: userData!['email'], username: userData['username']);

      final docRef = await db
          .collection(Collection.collectionOrder)
          .add(orderModel.toJson());

      final docSnapshot = await docRef.get();

      final orderMap = docSnapshot.data();

      final order = OrderModel.fromJson(orderMap!);
      await NotificationRepositary().sendNotificationToAdmin(
        title: "New Order",
        message: "You have a new order let's checkout!",
      );

      await db
          .collection(Collection.collectionCart)
          .doc(orderModel.userId)
          .delete();

      Navigator.of(context)
          .push(buildNavigation(route: const OrderSuccessScreen()));

      return Right(order);
    } catch (e) {
      snackBar(context: context, msg: e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<OrderModel>>> getAllOrders(
      BuildContext context) async {
    try {
      final db = FirebaseFirestore.instance;
      // Create an empty list for orders
      List<OrderModel> orderModel = [];
      // Get data from the collection
      final querySnapshot =
          await db.collection(Collection.collectionOrder).get();
      for (var docSnapshot in querySnapshot.docs) {
        log(docSnapshot.toString());
        final orders = OrderModel.fromJson(docSnapshot.data())
            .copyWith(id: docSnapshot.id);
        orderModel.add(orders);
      }

      // Calculate total profit by summing up the totalPrice field.
      final double totalProfit = orderModel.fold<double>(
        0,
        (previousValue, order) => previousValue + order.totalPrice,
      );

      // Check if the total_profit document exists in Firestore.
      final totalProfitDoc = await db
          .collection(Collection.collectionEarnings)
          .doc('earning')
          .get();

      if (totalProfitDoc.exists) {
        // If it exists, update the existing document
        await totalProfitDoc.reference.update({'totalProfit': totalProfit});
      } else {
        // If it doesn't exist, create a new document.
        final totalProfitModel = EarningsModel(earnings: totalProfit);
        await db
            .collection(Collection.collectionEarnings)
            .doc('earning')
            .set(totalProfitModel as Map<String, dynamic>);
      }

      // Sort the orderModel list by orderDate (newest first).
      orderModel.sort((a, b) {
        final DateTime dateA = a.orderDate;
        final DateTime dateB = b.orderDate;
        return dateB.compareTo(dateA);
      });

      return Right(orderModel);
    } catch (e) {
      log(e.toString());
      snackBar(context: context, msg: e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, OrderModel>> getOrder(
      BuildContext context, String id) async {
    try {
      final db = FirebaseFirestore.instance;
      final docRef = await db
          .collection(Collection.collectionOrder)
          .doc(id)
          .get()
          .then((doc) {
        id = doc.id;
        return doc.data();
      });
      final order = OrderModel.fromJson(docRef!).copyWith(id: id);

      return Right(order);
    } catch (e) {
      snackBar(context: context, msg: e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, void>> updateOrderStatus(
    BuildContext context,
    String id,
    String value,
    DateTime date,
    String update,
    String userId,
  ) async {
    try {
      final db = FirebaseFirestore.instance;
      await db.collection(Collection.collectionOrder).doc(id).update(
        {
          "status": value,
        },
      );
      await db
          .collection(Collection.collectionUser)
          .doc(userId)
          .get()
          .then((user) {
        var userData = user.data();
        print("Your order is $value");
        NotificationRepositary().sendPushMessage(
          title: "Status Changed",
          body: "Your order is $value",
          fcmToken: userData!['fcmToken'],
        );
      });

      if (update == 'shipped') {
        db.collection(Collection.collectionOrder).doc(id).update(
          {
            "orderShippedDate": DateTime.now().toString(),
          },
        );
      } else if (update == "delivered") {
        db.collection(Collection.collectionOrder).doc(id).update(
          {
            "orderDeliveredDate": DateTime.now().toString(),
          },
        );
      }
      // updateOrderStatusDate(context, id, date, update);

      return const Right(null);
    } catch (e) {
      snackBar(context: context, msg: e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<OrderModel>>> getAllOrdersOfAUser(
      String userId, BuildContext context) async {
    try {
      final db = FirebaseFirestore.instance;
      // Create an empty list for orders
      List<OrderModel> orderModel = [];
      // Get data from the collection
      final querySnapshot = await db
          .collection(Collection.collectionOrder)
          .where("userId", isEqualTo: userId)
          .get();
      for (var docSnapshot in querySnapshot.docs) {
        log(docSnapshot.toString());
        final orders = OrderModel.fromJson(docSnapshot.data())
            .copyWith(id: docSnapshot.id);
        orderModel.add(orders);
      }

      // Sort the orderModel list by orderDate (newest first).
      orderModel.sort((a, b) {
        final DateTime dateA = a.orderDate;
        final DateTime dateB = b.orderDate;
        return dateB.compareTo(dateA);
      });

      return Right(orderModel);
    } catch (e) {
      log(e.toString());
      snackBar(context: context, msg: e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}

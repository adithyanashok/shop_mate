import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/collections/collections.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/earnings/i_earnings_facade.dart';
import 'package:shop_mate/domain/earnings/models/earnings_model.dart';
import 'package:shop_mate/domain/order/model/order_model.dart';

@Injectable(as: IEarningsFacade)
class EarningsRepositary implements IEarningsFacade {
  @override
  Future<Either<MainFailure, EarningsModel>> getTotalEarnings() async {
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
        final earningsModel = EarningsModel(earnings: totalProfit);
        await db
            .collection(Collection.collectionEarnings)
            .doc('earning')
            .set(earningsModel.toJson()); // Assuming toJson method is defined.
      }

      return Right(EarningsModel(earnings: totalProfit));
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}

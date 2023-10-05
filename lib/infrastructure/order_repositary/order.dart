import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/collections/collections.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/order/i_order_facade.dart';
import 'package:shop_mate/domain/order/model/order_model.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';

@Injectable(as: IOrderFacade)
class OrderRepositary implements IOrderFacade {
  @override
  Future<Either<MainFailure, OrderModel>> placeOrder(
    OrderModel orderModel,
    BuildContext context,
  ) async {
    try {
      final db = FirebaseFirestore.instance;
      final docRef = await db
          .collection(Collection.collectionOrder)
          .add(orderModel.toJson());
      final docSnapshot = await docRef.get();
      final orderMap = docSnapshot.data();
      final order = OrderModel.fromJson(orderMap!);
      return Right(order);
    } catch (e) {
      snackBar(context: context, msg: e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}

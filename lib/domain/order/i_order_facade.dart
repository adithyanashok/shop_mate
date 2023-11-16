import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/order/model/order_model.dart';

abstract class IOrderFacade {
  Future<Either<MainFailure, OrderModel>> placeOrder(
    OrderModel orderModel,
    BuildContext context,
  );
  Future<Either<MainFailure, List<OrderModel>>> getAllOrders(
    BuildContext context,
  );
  Future<Either<MainFailure, List<OrderModel>>> getAllOrdersOfAUser(
    String userId,
    BuildContext context,
  );
  Future<Either<MainFailure, OrderModel>> getOrder(
    BuildContext context,
    String id,
  );
  Future<Either<MainFailure, void>> updateOrderStatus(
    BuildContext context,
    String id,
    String value,
    DateTime date,
    String update,
    String userId,
  );
}

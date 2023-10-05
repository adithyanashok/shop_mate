import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/order/model/order_model.dart';

abstract class IOrderFacade {
  Future<Either<MainFailure, OrderModel>> placeOrder(
    OrderModel orderModel,
    BuildContext context,
  );
}

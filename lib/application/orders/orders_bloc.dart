import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/order/i_order_facade.dart';
import 'package:shop_mate/domain/order/model/order_model.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

@injectable
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  IOrderFacade iOrderFacade;
  OrdersBloc(this.iOrderFacade) : super(OrdersState.initial()) {
    on<_PlaceOrder>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final orderOpt =
          await iOrderFacade.placeOrder(event.orderModel, event.context);
      emit(
        orderOpt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            orderOpt: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            orderModel: success,
            orderOpt: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}

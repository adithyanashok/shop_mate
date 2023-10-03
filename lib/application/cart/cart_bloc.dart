import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/cart/i_cart_facade.dart';
import 'package:shop_mate/domain/cart/model/cart_model.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  ICartFacade iCartFacade;
  CartBloc(this.iCartFacade) : super(CartState.initial()) {
    // add to cart method
    on<_AddToCart>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final cartOpt =
            await iCartFacade.addToCart(event.cartModel, event.context);
        emit(
          cartOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              cartOpt: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              cart: success,
              cartList: [success],
              cartOpt: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
    //
    // get cart method
    on<_GetCart>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final getCartOpt =
            await iCartFacade.getCart(event.userId, event.context);
        emit(
          getCartOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              cartListOpt: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              cart: success,
              cartOpt: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
    on<_IncrementQty>(
      (event, emit) async {
        final updateCartOpt = await iCartFacade.updateCart(
            event.cartModel, event.type, event.context);
        emit(
          updateCartOpt.fold(
            (failure) => state.copyWith(
                cartOpt: Some(
              Left(failure),
            )),
            (success) => state.copyWith(
              cartBool: success,
            ),
          ),
        );
      },
    );

    on<_DeleteProduct>(
      (event, emit) async {
        final deleteCartOpt =
            await iCartFacade.deleteProduct(event.cartModel, event.context);
        emit(
          deleteCartOpt.fold(
            (failure) => state.copyWith(
                cartOpt: Some(
              Left(failure),
            )),
            (success) => state.copyWith(
              cartBool: success,
            ),
          ),
        );
      },
    );
  }
}

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/product/i_product_facade.dart';
import 'package:shop_mate/domain/product/model/product.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  IProductFacade iProductFacade;
  ProductBloc(this.iProductFacade) : super(ProductState.initial()) {
    on<_AddProduct>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final productOpt = await iProductFacade.addProduct(
          event.product,
          'userId',
        );
        emit(
          productOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              productOpt: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              product: success,
              productOpt: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
    on<_GetAllProduct>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final productOpt = await iProductFacade.getAllProducts();

        emit(
          productOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              productOpt: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              products: success,
              productList: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
  }
}

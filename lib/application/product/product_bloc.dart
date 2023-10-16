import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_pickers/image_pickers.dart';
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
          event.selectedImages,
          event.context,
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
    on<_GetProductsByCategory>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final productOpt = await iProductFacade.getProductsByCategory(
            event.category, event.context);
        emit(
          productOpt.fold(
            (failure) => state.copyWith(
                isLoading: false,
                productList: Some(
                  Left(failure),
                )),
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
    on<_GetLaptops>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final productOpt = await iProductFacade.getProductsByCategory(
            event.category, event.context);
        emit(
          productOpt.fold(
            (failure) => state.copyWith(
                isLoading: false,
                productList: Some(
                  Left(failure),
                )),
            (success) => state.copyWith(
              isLoading: false,
              laptopListOpt: success,
              productList: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
    on<_GetEarphones>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final productOpt = await iProductFacade.getProductsByCategory(
            event.category, event.context);
        emit(
          productOpt.fold(
            (failure) => state.copyWith(
                isLoading: false,
                productList: Some(
                  Left(failure),
                )),
            (success) => state.copyWith(
              isLoading: false,
              earphoneListOpt: success,
              productList: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );

    on<_GetMobiles>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final productOpt = await iProductFacade.getProductsByCategory(
            event.category, event.context);
        emit(
          productOpt.fold(
            (failure) => state.copyWith(
                isLoading: false,
                productList: Some(
                  Left(failure),
                )),
            (success) => state.copyWith(
              isLoading: false,
              mobileListOpt: success,
            ),
          ),
        );
      },
    );

    on<_GetProduct>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final productOpt =
            await iProductFacade.getProduct(event.productId, event.context);
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
              productOpt: Some(
                Right(success),
              ),
              product: success,
            ),
          ),
        );
      },
    );
    on<_EditProduct>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final productUpdate = await iProductFacade.editProduct(
          event.product,
          event.selectedImages,
          event.context,
        );
        emit(
          productUpdate.fold(
            (failure) => state.copyWith(
              isLoading: false,
            ),
            (r) => state.copyWith(
              isLoading: false,
            ),
          ),
        );
      },
    );
    on<_DeleteProduct>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final productUpdate = await iProductFacade.deleteProduct(
          event.productId,
          event.context,
        );
        emit(
          productUpdate.fold(
            (failure) => state.copyWith(
              isLoading: false,
            ),
            (r) => state.copyWith(
              isLoading: false,
            ),
          ),
        );
      },
    );

    on<_SearchProduct>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final productOpt = await iProductFacade.searchProducts(event.query);

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

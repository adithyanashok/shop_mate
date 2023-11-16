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
    // Add product
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
    // Get All Products
    on<_GetAllProduct>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final productOpt = await iProductFacade.getAllProducts(event.fetchType);

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
              latestProducts: success,
              productList: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
    // Get Products by category
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
    // Getlaptops
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
    // get earphones
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
    // get mobiles
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
    // Get watches
    on<_GetWatches>(
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
              watchListOpt: success,
            ),
          ),
        );
      },
    );
    // Get product
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
    // Edit product
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
    // Delete product
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
    // Search product
    on<_SearchProduct>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final productOpt =
            await iProductFacade.searchProducts(event.query, event.sort!);

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
              searchResults: success,
              productList: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
    // Add Discount to product
    on<_AddDiscount>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final addDiscount = await iProductFacade.addDiscount(
          event.productId,
          event.discount,
          event.context,
        );
        emit(
          addDiscount.fold(
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
  }
}

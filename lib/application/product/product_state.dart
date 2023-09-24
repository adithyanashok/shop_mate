part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    ProductModel? product,
    List<ProductModel>? products,
    required bool isLoading,
    required Option<Either<MainFailure, ProductModel>> productOpt,
    Option<Either<MainFailure, List<ProductModel>>>? productList,
  }) = _ProductState;

  factory ProductState.initial() {
    return const ProductState(isLoading: false, productOpt: None());
  }
}

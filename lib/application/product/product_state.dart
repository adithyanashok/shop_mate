part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    ProductModel? product,
    @Default([]) List<ProductModel> products,
    required bool isLoading,
    required Option<Either<MainFailure, ProductModel>> productOpt,
    Option<Either<MainFailure, List<ProductModel>>>? productList,
    @Default([]) List<ProductModel> laptopListOpt,
    @Default([]) List<ProductModel> earphoneListOpt,
    @Default([]) List<ProductModel> mobileListOpt,
  }) = _ProductState;

  factory ProductState.initial() {
    return const ProductState(
      isLoading: false,
      productOpt: None(),
    );
  }
}
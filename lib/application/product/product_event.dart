part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.addProduct({required ProductModel product}) =
      _AddProduct;

  const factory ProductEvent.getAllProduct() = _GetAllProduct;
}

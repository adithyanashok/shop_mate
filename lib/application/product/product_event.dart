part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.addProduct({
    required ProductModel product,
    required List<Media> selectedImages,
    required BuildContext context,
  }) = _AddProduct;

  const factory ProductEvent.getAllProduct() = _GetAllProduct;

  const factory ProductEvent.getProductsByCategory({
    required String category,
    required BuildContext context,
  }) = _GetProductsByCategory;

  const factory ProductEvent.getLaptops({
    required String category,
    required BuildContext context,
  }) = _GetLaptops;

  const factory ProductEvent.getEarphones({
    required String category,
    required BuildContext context,
  }) = _GetEarphones;

  const factory ProductEvent.getMobiles({
    required String category,
    required BuildContext context,
  }) = _GetMobiles;

  const factory ProductEvent.getProduct({
    required String productId,
    required BuildContext context,
  }) = _GetProduct;
}

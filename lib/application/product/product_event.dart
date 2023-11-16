part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.addProduct({
    required ProductModel product,
    required List<Media> selectedImages,
    required BuildContext context,
  }) = _AddProduct;

  const factory ProductEvent.editProduct({
    required ProductModel product,
    required BuildContext context,
    List<Media>? selectedImages,
  }) = _EditProduct;

  const factory ProductEvent.deleteProduct({
    required String productId,
    required BuildContext context,
  }) = _DeleteProduct;

  const factory ProductEvent.getAllProduct({required String fetchType}) =
      _GetAllProduct;

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

  const factory ProductEvent.getWatches({
    required String category,
    required BuildContext context,
  }) = _GetWatches;

  const factory ProductEvent.getProduct({
    required String productId,
    required BuildContext context,
  }) = _GetProduct;

  const factory ProductEvent.searchProduct({
    required String query,
    String? sort,
  }) = _SearchProduct;

  const factory ProductEvent.addDiscount({
    required String productId,
    required int discount,
    required BuildContext context,
  }) = _AddDiscount;
}

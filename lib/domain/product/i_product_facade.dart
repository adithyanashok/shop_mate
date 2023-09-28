import 'package:dartz/dartz.dart';
import 'package:image_pickers/image_pickers.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/product/model/product.dart';

abstract class IProductFacade {
  Future<Either<MainFailure, ProductModel>> addProduct(
    ProductModel product,
    List<Media> selectedImages,
    context,
  );
  Future<Either<MainFailure, bool>> editProduct(
    ProductModel product,
    List<Media>? selectedImages,
    context,
  );
  Future<Either<MainFailure, bool>> deleteProduct(
    String productId,
    context,
  );

  Future<Either<MainFailure, List<ProductModel>>> getAllProducts();
  Future<Either<MainFailure, List<ProductModel>>> getProductsByCategory(
      String category, context);
  Future<Either<MainFailure, List<ProductModel>>> getLaptops(
      String category, context);
  Future<Either<MainFailure, List<ProductModel>>> getEarphones(
      String category, context);
  Future<Either<MainFailure, List<ProductModel>>> getMobiles(
      String category, context);
  Future<Either<MainFailure, ProductModel>> getProduct(
    String productId,
    context,
  );
}

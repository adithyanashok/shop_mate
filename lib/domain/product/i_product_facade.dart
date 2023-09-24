import 'package:dartz/dartz.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/product/model/product.dart';

abstract class IProductFacade {
  Future<Either<MainFailure, ProductModel>> addProduct(
      ProductModel product, String userId);

  Future<Either<MainFailure, List<ProductModel>>> getAllProducts();
}

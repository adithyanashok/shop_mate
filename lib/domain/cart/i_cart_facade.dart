import 'package:dartz/dartz.dart';
import 'package:shop_mate/domain/cart/model/cart_model.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';

abstract class ICartFacade {
  Future<Either<MainFailure, CartModel>> addToCart(
      CartModel cartModel, context);
  Future<Either<MainFailure, CartModel>> getCart(String userId, context);
  // Future<Either<MainFailure, bool>> updateCart(
  //     CartModel cartModel, String type, context);

  Future<Either<MainFailure, bool>> updateCart(
      CartModel cartModel, String type, context);

  Future<Either<MainFailure, bool>> deleteProduct(CartModel cartModel, context);
}

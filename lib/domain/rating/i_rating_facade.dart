import 'package:dartz/dartz.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/rating/model/rating_model.dart';

abstract class IRatingFacade {
  Future<Either<MainFailure, RatingModel>> rateAProduct(
      RatingModel ratingModel, context);
}

import 'package:dartz/dartz.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/rating/model/rating_model.dart';

abstract class IRatingFacade {
  // function for rating a product
  Future<Either<MainFailure, RatingModel>> rateAProduct(
    RatingModel ratingModel,
    context,
  );
  // function for fetching all ratings
  Future<Either<MainFailure, List<RatingModel>>> fetchRatings(
    String productId,
    context,
  );
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/collections/collections.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/rating/i_rating_facade.dart';
import 'package:shop_mate/domain/rating/model/rating_model.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';

@LazySingleton(as: IRatingFacade)
class RatingRepositary implements IRatingFacade {
  @override
  Future<Either<MainFailure, RatingModel>> rateAProduct(
      RatingModel ratingModel, context) async {
    try {
      final db = FirebaseFirestore.instance;
      final rating = ratingModel.toJson();
      final docRef =
          await db.collection(Collection.collectionRating).add(rating);
      final snapshot = await docRef.get();
      final ratingMap = RatingModel.fromJson(snapshot.data()!);
      return Right(ratingMap);
    } catch (e) {
      snackBar(context: context, msg: e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}

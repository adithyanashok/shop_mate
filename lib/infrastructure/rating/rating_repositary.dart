import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
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
      Navigator.of(context).pop();

      return Right(ratingMap);
    } catch (e) {
      snackBar(context: context, msg: e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<RatingModel>>> fetchRatings(
      String productId, context) async {
    try {
      final db = FirebaseFirestore.instance;
      // create a empty array for ratings
      List<RatingModel> ratings = [];
      // db query
      final querySnapshot = await db
          .collection(Collection.collectionRating)
          .where("productId", isEqualTo: productId)
          .get();
      for (var docSnapshot in querySnapshot.docs) {
        // put docSnapshot to a new variable
        final ratingData = docSnapshot.data();
        // add ratingData to ProductModel.fromJson to get product model as return
        final rating =
            RatingModel.fromJson(ratingData).copyWith(id: docSnapshot.id);
        // add rating to ratings array
        ratings.add(rating);
      }
      // return result
      return Right(ratings);
    } catch (e) {
      snackBar(context: context, msg: e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}

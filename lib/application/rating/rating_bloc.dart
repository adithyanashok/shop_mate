import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/rating/i_rating_facade.dart';
import 'package:shop_mate/domain/rating/model/rating_model.dart';

part 'rating_event.dart';
part 'rating_state.dart';
part 'rating_bloc.freezed.dart';

@injectable
class RatingBloc extends Bloc<RatingEvent, RatingState> {
  IRatingFacade iRatingFacade;
  RatingBloc(this.iRatingFacade) : super(RatingState.initial()) {
    // Rate a product
    on<_RateProduct>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final ratingOpt =
            await iRatingFacade.rateAProduct(event.ratingModel, event.context);
        emit(
          ratingOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              ratingOpt: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              rating: success,
              ratingOpt: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
    // fetch all ratings
    on<_FetchRatings>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final ratingList =
            await iRatingFacade.fetchRatings(event.productId, event.context);
        emit(
          ratingList.fold(
            (failure) => state.copyWith(
              isLoading: false,
              ratingListOpt: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              ratings: success,
              ratingListOpt: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
  }
}

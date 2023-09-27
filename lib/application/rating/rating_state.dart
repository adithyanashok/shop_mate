part of 'rating_bloc.dart';

@freezed
class RatingState with _$RatingState {
  const factory RatingState({
    required bool isLoading,
    required RatingModel rating,
    required Option<Either<MainFailure, RatingModel>> ratingOpt,
  }) = _RatingState;
  factory RatingState.initial() {
    return const RatingState(
      isLoading: false,
      rating: RatingModel(
        description: '',
        productId: '',
        rating: 0,
        title: '',
        userId: '',
      ),
      ratingOpt: None(),
    );
  }
}

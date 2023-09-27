part of 'rating_bloc.dart';

@freezed
class RatingEvent with _$RatingEvent {
  const factory RatingEvent.rateProduct(
      {required RatingModel ratingModel,
      required BuildContext context}) = _RateProduct;
}

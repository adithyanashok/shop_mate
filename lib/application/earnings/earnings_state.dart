part of 'earnings_bloc.dart';

@freezed
class EarningsState with _$EarningsState {
  const factory EarningsState({
    required bool isLoading,
    required Option<Either<MainFailure, EarningsModel>> earningModelOpt,
    required EarningsModel earningsModel,
  }) = _EarningsState;

  factory EarningsState.initial() {
    return const EarningsState(
      isLoading: false,
      earningModelOpt: None(),
      earningsModel: EarningsModel(earnings: 0),
    );
  }
}

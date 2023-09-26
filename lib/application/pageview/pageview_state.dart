part of 'pageview_bloc.dart';

@freezed
class PageviewState with _$PageviewState {
  const factory PageviewState({
    required int currentIndex,
  }) = _PageviewState;
  factory PageviewState.initial() {
    return const PageviewState(currentIndex: 0);
  }
}

part of 'bottom_nav_bloc.dart';

@freezed
class BottomNavState with _$BottomNavState {
  const factory BottomNavState({
    required int value,
  }) = _BottomNavState;

  factory BottomNavState.initial() {
    return BottomNavState(value: 0);
  }
  // const factory BottomNavState.search() = _Search;
  // const factory BottomNavState.cart() = _Cart;
  // const factory BottomNavState.profile() = _Profile;
}

part of 'bottom_nav_bloc.dart';

@freezed
class BottomNavEvent with _$BottomNavEvent {
  const factory BottomNavEvent.homeEvent({required int value}) = HomeEvent;
  // const factory BottomNavEvent.search({required int value}) = Search;
  // const factory BottomNavEvent.cart({required int value}) = Cart;
  // const factory BottomNavEvent.profile({required int value}) = Profile;
}

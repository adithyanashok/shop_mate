part of 'pageview_bloc.dart';

@freezed
class PageviewEvent with _$PageviewEvent {
  const factory PageviewEvent.onPageChanged({required int currentIndex}) =
      _OnPageChanged;
}

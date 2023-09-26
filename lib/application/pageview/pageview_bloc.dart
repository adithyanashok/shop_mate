import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pageview_event.dart';
part 'pageview_state.dart';
part 'pageview_bloc.freezed.dart';

class PageviewBloc extends Bloc<PageviewEvent, PageviewState> {
  PageviewBloc() : super(PageviewState.initial()) {
    on<_OnPageChanged>((event, emit) {
      emit(state.copyWith(currentIndex: event.currentIndex));
    });
  }
}

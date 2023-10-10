import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/earnings/i_earnings_facade.dart';
import 'package:shop_mate/domain/earnings/models/earnings_model.dart';

part 'earnings_event.dart';
part 'earnings_state.dart';
part 'earnings_bloc.freezed.dart';

@injectable
class EarningsBloc extends Bloc<EarningsEvent, EarningsState> {
  IEarningsFacade iEarningsFacade;
  EarningsBloc(this.iEarningsFacade) : super(EarningsState.initial()) {
    on<_GetTotalEarnings>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final earningsOpt = await iEarningsFacade.getTotalEarnings();
      log(earningsOpt.toString());
      emit(
        earningsOpt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            earningModelOpt: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            earningsModel: success,
            earningModelOpt: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}

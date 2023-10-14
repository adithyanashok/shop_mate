import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/transactions/i_transaction_facade.dart';
import 'package:shop_mate/domain/transactions/model/transaction_model.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  ITransactionFacade iTransactionFacade;
  TransactionBloc(this.iTransactionFacade) : super(TransactionState.initial()) {
    on<_CreateTransaction>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final transactionOpt =
          await iTransactionFacade.createTransaction(event.transactionModel);
      emit(
        transactionOpt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            transactionOpt: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            transactionModel: success,
            transactionOpt: Some(
              Right(success),
            ),
          ),
        ),
      );
    });

    on<_FetchTransactions>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final transactionsOpt = await iTransactionFacade.fetchTransactions();

        emit(
          transactionsOpt.fold(
            (failure) => state.copyWith(
              isLoading: false,
              transactionListOpt: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoading: false,
              transactionList: success,
              transactionListOpt: Some(
                Right(success),
              ),
            ),
          ),
        );
      },
    );
  }
}

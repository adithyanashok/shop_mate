part of 'transaction_bloc.dart';

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    required bool isLoading,
    required List<TransactionModel> transactionList,
    required TransactionModel transactionModel,
    required Option<Either<MainFailure, TransactionModel>> transactionOpt,
    required Option<Either<MainFailure, List<TransactionModel>>>
        transactionListOpt,
  }) = _TransactionState;

  factory TransactionState.initial() {
    return TransactionState(
      isLoading: false,
      transactionList: [],
      transactionModel: TransactionModel(
        userId: '',
        amount: 0,
        email: '',
        name: '',
        date: DateTime.now(),
      ),
      transactionOpt: const None(),
      transactionListOpt: const None(),
    );
  }
}

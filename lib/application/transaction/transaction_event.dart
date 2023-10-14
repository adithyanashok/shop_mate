part of 'transaction_bloc.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.createTransaction(
      TransactionModel transactionModel) = _CreateTransaction;
  const factory TransactionEvent.fetchTransactions() = _FetchTransactions;
}

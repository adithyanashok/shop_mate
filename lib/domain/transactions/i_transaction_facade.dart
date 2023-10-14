import 'package:dartz/dartz.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/transactions/model/transaction_model.dart';

abstract class ITransactionFacade {
  Future<Either<MainFailure, TransactionModel>> createTransaction(
      TransactionModel transactionModel);
  Future<Either<MainFailure, List<TransactionModel>>> fetchTransactions();
}

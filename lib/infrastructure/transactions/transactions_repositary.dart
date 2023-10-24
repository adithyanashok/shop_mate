import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/collections/collections.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/transactions/i_transaction_facade.dart';
import 'package:shop_mate/domain/transactions/model/transaction_model.dart';

@LazySingleton(as: ITransactionFacade)
class TransactionsRepositary implements ITransactionFacade {
  @override
  Future<Either<MainFailure, TransactionModel>> createTransaction(
      TransactionModel transactionModel) async {
    try {
      FirebaseFirestore db = FirebaseFirestore.instance;
      final docRef = await db
          .collection(Collection.collectionTransactions)
          .add(transactionModel.toJson());
      final data = await docRef.get();
      TransactionModel model = TransactionModel.fromJson(data.data()!);
      return Right(model);
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<TransactionModel>>>
      fetchTransactions() async {
    try {
      final db = FirebaseFirestore.instance;
      List<TransactionModel> transactions = [];

      final querySnapshot =
          await db.collection(Collection.collectionTransactions).get();

      for (var docSnapshot in querySnapshot.docs) {
        final product = TransactionModel.fromJson(docSnapshot.data());

        transactions.sort(
          (a, b) {
            final DateTime dateTimeA = a.date;
            final DateTime dateTimeB = b.date;
            return dateTimeB.compareTo(dateTimeA);
          },
        );

        transactions.add(product);
      }
      return Right(transactions);
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}

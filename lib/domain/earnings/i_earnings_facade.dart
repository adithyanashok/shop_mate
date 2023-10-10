import 'package:dartz/dartz.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/earnings/models/earnings_model.dart';

abstract class IEarningsFacade{
  Future<Either<MainFailure, EarningsModel>> getTotalEarnings();
}
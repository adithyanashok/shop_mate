import 'package:dartz/dartz.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/users/model/user.dart';

abstract class ISignupFacade {
  Future<Either<MainFailure, UserModel>> signupMethod(UserModel user);
}

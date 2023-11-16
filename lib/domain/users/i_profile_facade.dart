import 'package:dartz/dartz.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/users/model/user.dart';

abstract class IAuthFacade {
  Future<Either<MainFailure, List<UserModel>>> getUsers({
    required bool getAllUsers,
  });
  Future<Either<MainFailure, UserModel>> getCurrentUser();
}

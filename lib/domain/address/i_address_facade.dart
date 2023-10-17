import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:shop_mate/domain/address/model/address_model.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';

abstract class IAddressFacade {
  Future<Either<MainFailure, AddressModel>> addAddress(
      AddressModel addressModel, BuildContext context);
  Future<Either<MainFailure, List<AddressModel>>> getAddress(
      String userId, BuildContext context);
  Future<Either<MainFailure, void>> updateAddress(
      AddressModel addressModel, BuildContext context);
  Future<Either<MainFailure, void>> deleteAddress(
      String id, String userId, BuildContext context);
}

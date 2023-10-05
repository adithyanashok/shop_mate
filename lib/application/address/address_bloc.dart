import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/address/i_address_facade.dart';
import 'package:shop_mate/domain/address/model/address_model.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';

part 'address_event.dart';
part 'address_state.dart';
part 'address_bloc.freezed.dart';

@injectable
class AddressBloc extends Bloc<AddressEvent, AddressState> {
  IAddressFacade iAddressFacade;
  AddressBloc(this.iAddressFacade) : super(AddressState.initial()) {
    on<_AddAddress>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final addressOpt =
          await iAddressFacade.addAddress(event.addressModel, event.context);
      emit(
        addressOpt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            addressOpt: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            addressModel: success,
            addressOpt: Some(
              Right(success),
            ),
          ),
        ),
      );
    });

    on<_GetAddress>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final addressOpt =
          await iAddressFacade.getAddress(event.userId, event.context);
      emit(
        addressOpt.fold(
          (failure) => state.copyWith(
              isLoading: false, addressOptList: Some(Left(failure))),
          (success) => state.copyWith(
            isLoading: false,
            addressModelList: success,
            addressOptList: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}

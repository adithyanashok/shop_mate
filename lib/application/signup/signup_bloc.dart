import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/signup/i_signup_facade.dart';
import 'package:shop_mate/domain/users/model/user.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  ISignupFacade iSignupFacade;
  SignupBloc(this.iSignupFacade) : super(SignupState.initial()) {
    // Signup
    on<_Signup>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final signinOpt =
            await iSignupFacade.signupMethod(event.userModel, event.context);
        log("Message at bloc: $signinOpt");
        emit(signinOpt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            signinOpt: Some(Left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            user: success,
            signinOpt: Some(
              Right(success),
            ),
          ),
        ));
      },
    );
  }
}

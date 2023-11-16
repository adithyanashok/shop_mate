import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/login/i_login_facade.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  ILoginFacade iLoginFacade;
  LoginBloc(this.iLoginFacade) : super(LoginState.inital()) {
    // Login
    on<_Login>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final loginOpt = await iLoginFacade.loginMethod(
          event.email, event.password, event.buildContext);
      emit(
        loginOpt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            loginOpt: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            loginOpt: Some(
              Right(success),
            ),
            user: success,
          ),
        ),
      );
    });
    // Signin With Google
    on<_SignInWithGoogle>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final loginOpt = await iLoginFacade.signinWithGoogle(event.buildContext);
      emit(
        loginOpt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            loginOpt: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            loginOpt: Some(
              Right(success),
            ),
            user: success,
          ),
        ),
      );
    });
  }
}

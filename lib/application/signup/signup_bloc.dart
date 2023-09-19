import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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
    on<_Signup>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        Either<MainFailure, UserModel> signin =
            await iSignupFacade.signupMethod(event.userModel);
        emit(
          signin.fold(
            (l) => state.copyWith(
              isLoading: false,
            ),
            (r) => state.copyWith(
              isLoading: false,
              user: r as Map<String, dynamic>,
            ),
          ),
        );
      },
    );
  }
}

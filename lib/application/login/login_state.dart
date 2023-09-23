part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isLoading,
    User? user,
    required Option<Either<MainFailure, User>> loginOpt,
  }) = _LoginState;

  factory LoginState.inital() {
    return const LoginState(
      isLoading: false,
      loginOpt: None(),
    );
  }
}

part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required bool isLoading,
    User? user,
    required Option<Either<MainFailure, User>> signinOpt,
  }) = _SignupState;
  factory SignupState.initial() {
    return SignupState(
      isLoading: false,
      // user: ,
      signinOpt: None(),
    );
  }
}

part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required bool isLoading,
    required Map<String, dynamic> user,
    required Option<Either<MainFailure, UserModel>> signinOption,
  }) = _SignupState;
  factory SignupState.initial() {
    return SignupState(
      isLoading: false,
      signinOption: None(),
      user: {},
    );
  }
}

part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login({
    required String email,
    required String password,
    required BuildContext buildContext,
  }) = _Login;

  const factory LoginEvent.signInWithGoogle({
    required BuildContext buildContext,
  }) = _SignInWithGoogle;
}

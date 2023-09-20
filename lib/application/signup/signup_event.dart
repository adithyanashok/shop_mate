part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.signup(
      {required UserModel userModel, required BuildContext context}) = _Signup;
}

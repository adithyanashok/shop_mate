part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required bool isLoading,
    required List<UserModel> userModel,
    required Option<Either<MainFailure, List<UserModel>>> userModelOpt,
  }) = _UserState;

  factory UserState.initial() {
    return const UserState(
      isLoading: false,
      userModel: [],
      userModelOpt: None(),
    );
  }
}

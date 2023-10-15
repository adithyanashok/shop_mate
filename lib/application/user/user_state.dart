part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required bool isLoading,
    required List<UserModel> userModel,
    required UserModel user,
    required Option<Either<MainFailure, List<UserModel>>> userModelOpt,
    required Option<Either<MainFailure, UserModel>> userModelListOpt,
  }) = _UserState;

  factory UserState.initial() {
    return const UserState(
      isLoading: false,
      userModel: [],
      userModelOpt: None(),
      user: UserModel(),
      userModelListOpt: None(),
    );
  }
}

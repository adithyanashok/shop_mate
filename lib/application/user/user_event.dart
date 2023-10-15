part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUsers({required bool getAllUsers}) = _GetUsers;
  const factory UserEvent.getUser() = _GetUser;
}

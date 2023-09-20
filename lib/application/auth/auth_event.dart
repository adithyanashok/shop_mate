import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authenticated(User user) = _Authenticated;
  const factory AuthEvent.unauthenticated() = _Unauthenticated;
}

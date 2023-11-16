// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:shop_mate/application/auth/auth_event.dart';
// import 'package:shop_mate/application/auth/auth_state.dart';

// class AuthBloc extends Bloc<AuthEvent, AuthState> {
//   AuthBloc() : super(const AuthState.initial());

//   @override
//   Stream<AuthState> mapEventToState(AuthEvent event) async* {
//     yield* event.when(
//       authenticated: (user) async* {
//         emit(AuthState.authenticated(user));
//       },
//       unauthenticated: () async* {
//         emit(const AuthState.unauthenticated());
//       },
//     );
//   }
// }

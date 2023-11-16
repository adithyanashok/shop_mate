import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/failures/main_failures.dart';
import 'package:shop_mate/domain/users/i_profile_facade.dart';
import 'package:shop_mate/domain/users/model/user.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  IAuthFacade iAuthFacade;
  UserBloc(this.iAuthFacade) : super(UserState.initial()) {
    // Get users
    on<_GetUsers>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final usersOpt =
          await iAuthFacade.getUsers(getAllUsers: event.getAllUsers);
      emit(
        usersOpt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            userModelOpt: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            userModel: success,
            userModelOpt: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
    // get user
    on<_GetUser>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final usersOpt = await iAuthFacade.getCurrentUser();
      emit(
        usersOpt.fold(
          (failure) => state.copyWith(
            isLoading: false,
            userModelListOpt: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            user: success,
            userModelListOpt: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}

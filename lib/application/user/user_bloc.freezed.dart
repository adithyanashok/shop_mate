// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool getAllUsers) getUsers,
    required TResult Function() getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool getAllUsers)? getUsers,
    TResult? Function()? getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool getAllUsers)? getUsers,
    TResult Function()? getUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetUser value) getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetUser value)? getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetUser value)? getUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUsersImplCopyWith<$Res> {
  factory _$$GetUsersImplCopyWith(
          _$GetUsersImpl value, $Res Function(_$GetUsersImpl) then) =
      __$$GetUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool getAllUsers});
}

/// @nodoc
class __$$GetUsersImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUsersImpl>
    implements _$$GetUsersImplCopyWith<$Res> {
  __$$GetUsersImplCopyWithImpl(
      _$GetUsersImpl _value, $Res Function(_$GetUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAllUsers = null,
  }) {
    return _then(_$GetUsersImpl(
      getAllUsers: null == getAllUsers
          ? _value.getAllUsers
          : getAllUsers // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetUsersImpl implements _GetUsers {
  const _$GetUsersImpl({required this.getAllUsers});

  @override
  final bool getAllUsers;

  @override
  String toString() {
    return 'UserEvent.getUsers(getAllUsers: $getAllUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersImpl &&
            (identical(other.getAllUsers, getAllUsers) ||
                other.getAllUsers == getAllUsers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getAllUsers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersImplCopyWith<_$GetUsersImpl> get copyWith =>
      __$$GetUsersImplCopyWithImpl<_$GetUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool getAllUsers) getUsers,
    required TResult Function() getUser,
  }) {
    return getUsers(getAllUsers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool getAllUsers)? getUsers,
    TResult? Function()? getUser,
  }) {
    return getUsers?.call(getAllUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool getAllUsers)? getUsers,
    TResult Function()? getUser,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(getAllUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetUser value) getUser,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetUser value)? getUser,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class _GetUsers implements UserEvent {
  const factory _GetUsers({required final bool getAllUsers}) = _$GetUsersImpl;

  bool get getAllUsers;
  @JsonKey(ignore: true)
  _$$GetUsersImplCopyWith<_$GetUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserImplCopyWith<$Res> {
  factory _$$GetUserImplCopyWith(
          _$GetUserImpl value, $Res Function(_$GetUserImpl) then) =
      __$$GetUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserImpl>
    implements _$$GetUserImplCopyWith<$Res> {
  __$$GetUserImplCopyWithImpl(
      _$GetUserImpl _value, $Res Function(_$GetUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserImpl implements _GetUser {
  const _$GetUserImpl();

  @override
  String toString() {
    return 'UserEvent.getUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool getAllUsers) getUsers,
    required TResult Function() getUser,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool getAllUsers)? getUsers,
    TResult? Function()? getUser,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool getAllUsers)? getUsers,
    TResult Function()? getUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_GetUser value) getUser,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_GetUser value)? getUser,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUser implements UserEvent {
  const factory _GetUser() = _$GetUserImpl;
}

/// @nodoc
mixin _$UserState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<UserModel> get userModel => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<UserModel>>> get userModelOpt =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, UserModel>> get userModelListOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<UserModel> userModel,
      UserModel user,
      Option<Either<MainFailure, List<UserModel>>> userModelOpt,
      Option<Either<MainFailure, UserModel>> userModelListOpt});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? userModel = null,
    Object? user = null,
    Object? userModelOpt = null,
    Object? userModelListOpt = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      userModelOpt: null == userModelOpt
          ? _value.userModelOpt
          : userModelOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<UserModel>>>,
      userModelListOpt: null == userModelListOpt
          ? _value.userModelListOpt
          : userModelListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, UserModel>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<UserModel> userModel,
      UserModel user,
      Option<Either<MainFailure, List<UserModel>>> userModelOpt,
      Option<Either<MainFailure, UserModel>> userModelListOpt});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? userModel = null,
    Object? user = null,
    Object? userModelOpt = null,
    Object? userModelListOpt = null,
  }) {
    return _then(_$UserStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userModel: null == userModel
          ? _value._userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      userModelOpt: null == userModelOpt
          ? _value.userModelOpt
          : userModelOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<UserModel>>>,
      userModelListOpt: null == userModelListOpt
          ? _value.userModelListOpt
          : userModelListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, UserModel>>,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {required this.isLoading,
      required final List<UserModel> userModel,
      required this.user,
      required this.userModelOpt,
      required this.userModelListOpt})
      : _userModel = userModel;

  @override
  final bool isLoading;
  final List<UserModel> _userModel;
  @override
  List<UserModel> get userModel {
    if (_userModel is EqualUnmodifiableListView) return _userModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userModel);
  }

  @override
  final UserModel user;
  @override
  final Option<Either<MainFailure, List<UserModel>>> userModelOpt;
  @override
  final Option<Either<MainFailure, UserModel>> userModelListOpt;

  @override
  String toString() {
    return 'UserState(isLoading: $isLoading, userModel: $userModel, user: $user, userModelOpt: $userModelOpt, userModelListOpt: $userModelListOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._userModel, _userModel) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userModelOpt, userModelOpt) ||
                other.userModelOpt == userModelOpt) &&
            (identical(other.userModelListOpt, userModelListOpt) ||
                other.userModelListOpt == userModelListOpt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_userModel),
      user,
      userModelOpt,
      userModelListOpt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {required final bool isLoading,
      required final List<UserModel> userModel,
      required final UserModel user,
      required final Option<Either<MainFailure, List<UserModel>>> userModelOpt,
      required final Option<Either<MainFailure, UserModel>>
          userModelListOpt}) = _$UserStateImpl;

  @override
  bool get isLoading;
  @override
  List<UserModel> get userModel;
  @override
  UserModel get user;
  @override
  Option<Either<MainFailure, List<UserModel>>> get userModelOpt;
  @override
  Option<Either<MainFailure, UserModel>> get userModelListOpt;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

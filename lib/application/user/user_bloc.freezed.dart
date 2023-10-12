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
  bool get getAllUsers => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool getAllUsers) getUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool getAllUsers)? getUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool getAllUsers)? getUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUsers value) getUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsers value)? getUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEventCopyWith<UserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
  @useResult
  $Res call({bool getAllUsers});
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAllUsers = null,
  }) {
    return _then(_value.copyWith(
      getAllUsers: null == getAllUsers
          ? _value.getAllUsers
          : getAllUsers // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUsersImplCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory _$$GetUsersImplCopyWith(
          _$GetUsersImpl value, $Res Function(_$GetUsersImpl) then) =
      __$$GetUsersImplCopyWithImpl<$Res>;
  @override
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
  }) {
    return getUsers(getAllUsers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool getAllUsers)? getUsers,
  }) {
    return getUsers?.call(getAllUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool getAllUsers)? getUsers,
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
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUsers value)? getUsers,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUsers value)? getUsers,
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

  @override
  bool get getAllUsers;
  @override
  @JsonKey(ignore: true)
  _$$GetUsersImplCopyWith<_$GetUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<UserModel> get userModel => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<UserModel>>> get userModelOpt =>
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
      Option<Either<MainFailure, List<UserModel>>> userModelOpt});
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
    Object? userModelOpt = null,
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
      userModelOpt: null == userModelOpt
          ? _value.userModelOpt
          : userModelOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<UserModel>>>,
    ) as $Val);
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
      Option<Either<MainFailure, List<UserModel>>> userModelOpt});
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
    Object? userModelOpt = null,
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
      userModelOpt: null == userModelOpt
          ? _value.userModelOpt
          : userModelOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<UserModel>>>,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {required this.isLoading,
      required final List<UserModel> userModel,
      required this.userModelOpt})
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
  final Option<Either<MainFailure, List<UserModel>>> userModelOpt;

  @override
  String toString() {
    return 'UserState(isLoading: $isLoading, userModel: $userModel, userModelOpt: $userModelOpt)';
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
            (identical(other.userModelOpt, userModelOpt) ||
                other.userModelOpt == userModelOpt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_userModel), userModelOpt);

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
      required final Option<Either<MainFailure, List<UserModel>>>
          userModelOpt}) = _$UserStateImpl;

  @override
  bool get isLoading;
  @override
  List<UserModel> get userModel;
  @override
  Option<Either<MainFailure, List<UserModel>>> get userModelOpt;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

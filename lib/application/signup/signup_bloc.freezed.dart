// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupEvent {
  UserModel get userModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userModel) signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel userModel)? signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userModel)? signup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signup value) signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signup value)? signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signup value)? signup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupEventCopyWith<SignupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupEventCopyWith<$Res> {
  factory $SignupEventCopyWith(
          SignupEvent value, $Res Function(SignupEvent) then) =
      _$SignupEventCopyWithImpl<$Res, SignupEvent>;
  @useResult
  $Res call({UserModel userModel});

  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class _$SignupEventCopyWithImpl<$Res, $Val extends SignupEvent>
    implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
  }) {
    return _then(_value.copyWith(
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get userModel {
    return $UserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignupCopyWith<$Res> implements $SignupEventCopyWith<$Res> {
  factory _$$_SignupCopyWith(_$_Signup value, $Res Function(_$_Signup) then) =
      __$$_SignupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel userModel});

  @override
  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$_SignupCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$_Signup>
    implements _$$_SignupCopyWith<$Res> {
  __$$_SignupCopyWithImpl(_$_Signup _value, $Res Function(_$_Signup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
  }) {
    return _then(_$_Signup(
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$_Signup implements _Signup {
  const _$_Signup({required this.userModel});

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'SignupEvent.signup(userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Signup &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupCopyWith<_$_Signup> get copyWith =>
      __$$_SignupCopyWithImpl<_$_Signup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userModel) signup,
  }) {
    return signup(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel userModel)? signup,
  }) {
    return signup?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userModel)? signup,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Signup value) signup,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Signup value)? signup,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Signup value)? signup,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class _Signup implements SignupEvent {
  const factory _Signup({required final UserModel userModel}) = _$_Signup;

  @override
  UserModel get userModel;
  @override
  @JsonKey(ignore: true)
  _$$_SignupCopyWith<_$_Signup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignupState {
  bool get isLoading => throw _privateConstructorUsedError;
  Map<String, dynamic> get user => throw _privateConstructorUsedError;
  Option<Either<MainFailure, UserModel>> get signinOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
  @useResult
  $Res call(
      {bool isLoading,
      Map<String, dynamic> user,
      Option<Either<MainFailure, UserModel>> signinOption});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = null,
    Object? signinOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      signinOption: null == signinOption
          ? _value.signinOption
          : signinOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, UserModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignupStateCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$_SignupStateCopyWith(
          _$_SignupState value, $Res Function(_$_SignupState) then) =
      __$$_SignupStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Map<String, dynamic> user,
      Option<Either<MainFailure, UserModel>> signinOption});
}

/// @nodoc
class __$$_SignupStateCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$_SignupState>
    implements _$$_SignupStateCopyWith<$Res> {
  __$$_SignupStateCopyWithImpl(
      _$_SignupState _value, $Res Function(_$_SignupState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = null,
    Object? signinOption = null,
  }) {
    return _then(_$_SignupState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      signinOption: null == signinOption
          ? _value.signinOption
          : signinOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, UserModel>>,
    ));
  }
}

/// @nodoc

class _$_SignupState implements _SignupState {
  const _$_SignupState(
      {required this.isLoading,
      required final Map<String, dynamic> user,
      required this.signinOption})
      : _user = user;

  @override
  final bool isLoading;
  final Map<String, dynamic> _user;
  @override
  Map<String, dynamic> get user {
    if (_user is EqualUnmodifiableMapView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_user);
  }

  @override
  final Option<Either<MainFailure, UserModel>> signinOption;

  @override
  String toString() {
    return 'SignupState(isLoading: $isLoading, user: $user, signinOption: $signinOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            (identical(other.signinOption, signinOption) ||
                other.signinOption == signinOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_user), signinOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupStateCopyWith<_$_SignupState> get copyWith =>
      __$$_SignupStateCopyWithImpl<_$_SignupState>(this, _$identity);
}

abstract class _SignupState implements SignupState {
  const factory _SignupState(
          {required final bool isLoading,
          required final Map<String, dynamic> user,
          required final Option<Either<MainFailure, UserModel>> signinOption}) =
      _$_SignupState;

  @override
  bool get isLoading;
  @override
  Map<String, dynamic> get user;
  @override
  Option<Either<MainFailure, UserModel>> get signinOption;
  @override
  @JsonKey(ignore: true)
  _$$_SignupStateCopyWith<_$_SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

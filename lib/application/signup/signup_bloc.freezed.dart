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
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userModel, BuildContext context) signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel userModel, BuildContext context)? signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userModel, BuildContext context)? signup,
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
  $Res call({UserModel userModel, BuildContext context});

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
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
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
  $Res call({UserModel userModel, BuildContext context});

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
    Object? context = null,
  }) {
    return _then(_$_Signup(
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_Signup implements _Signup {
  const _$_Signup({required this.userModel, required this.context});

  @override
  final UserModel userModel;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SignupEvent.signup(userModel: $userModel, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Signup &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupCopyWith<_$_Signup> get copyWith =>
      __$$_SignupCopyWithImpl<_$_Signup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel userModel, BuildContext context) signup,
  }) {
    return signup(userModel, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel userModel, BuildContext context)? signup,
  }) {
    return signup?.call(userModel, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel userModel, BuildContext context)? signup,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(userModel, context);
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
  const factory _Signup(
      {required final UserModel userModel,
      required final BuildContext context}) = _$_Signup;

  @override
  UserModel get userModel;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_SignupCopyWith<_$_Signup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignupState {
  bool get isLoading => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Option<Either<MainFailure, User>> get signinOpt =>
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
      User? user,
      Option<Either<MainFailure, User>> signinOpt});
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
    Object? user = freezed,
    Object? signinOpt = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      signinOpt: null == signinOpt
          ? _value.signinOpt
          : signinOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, User>>,
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
      User? user,
      Option<Either<MainFailure, User>> signinOpt});
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
    Object? user = freezed,
    Object? signinOpt = null,
  }) {
    return _then(_$_SignupState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      signinOpt: null == signinOpt
          ? _value.signinOpt
          : signinOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, User>>,
    ));
  }
}

/// @nodoc

class _$_SignupState implements _SignupState {
  const _$_SignupState(
      {required this.isLoading, this.user, required this.signinOpt});

  @override
  final bool isLoading;
  @override
  final User? user;
  @override
  final Option<Either<MainFailure, User>> signinOpt;

  @override
  String toString() {
    return 'SignupState(isLoading: $isLoading, user: $user, signinOpt: $signinOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.signinOpt, signinOpt) ||
                other.signinOpt == signinOpt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, user, signinOpt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupStateCopyWith<_$_SignupState> get copyWith =>
      __$$_SignupStateCopyWithImpl<_$_SignupState>(this, _$identity);
}

abstract class _SignupState implements SignupState {
  const factory _SignupState(
          {required final bool isLoading,
          final User? user,
          required final Option<Either<MainFailure, User>> signinOpt}) =
      _$_SignupState;

  @override
  bool get isLoading;
  @override
  User? get user;
  @override
  Option<Either<MainFailure, User>> get signinOpt;
  @override
  @JsonKey(ignore: true)
  _$$_SignupStateCopyWith<_$_SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

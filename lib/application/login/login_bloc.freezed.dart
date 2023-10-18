// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  BuildContext get buildContext => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext buildContext)
        login,
    required TResult Function(BuildContext buildContext) signInWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext buildContext)?
        login,
    TResult? Function(BuildContext buildContext)? signInWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext buildContext)?
        login,
    TResult Function(BuildContext buildContext)? signInWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
  @useResult
  $Res call({BuildContext buildContext});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildContext = null,
  }) {
    return _then(_value.copyWith(
      buildContext: null == buildContext
          ? _value.buildContext
          : buildContext // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, BuildContext buildContext});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? buildContext = null,
  }) {
    return _then(_$LoginImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      buildContext: null == buildContext
          ? _value.buildContext
          : buildContext // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl(
      {required this.email,
      required this.password,
      required this.buildContext});

  @override
  final String email;
  @override
  final String password;
  @override
  final BuildContext buildContext;

  @override
  String toString() {
    return 'LoginEvent.login(email: $email, password: $password, buildContext: $buildContext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.buildContext, buildContext) ||
                other.buildContext == buildContext));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, buildContext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext buildContext)
        login,
    required TResult Function(BuildContext buildContext) signInWithGoogle,
  }) {
    return login(email, password, buildContext);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext buildContext)?
        login,
    TResult? Function(BuildContext buildContext)? signInWithGoogle,
  }) {
    return login?.call(email, password, buildContext);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext buildContext)?
        login,
    TResult Function(BuildContext buildContext)? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password, buildContext);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginEvent {
  const factory _Login(
      {required final String email,
      required final String password,
      required final BuildContext buildContext}) = _$LoginImpl;

  String get email;
  String get password;
  @override
  BuildContext get buildContext;
  @override
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithGoogleImplCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$SignInWithGoogleImplCopyWith(_$SignInWithGoogleImpl value,
          $Res Function(_$SignInWithGoogleImpl) then) =
      __$$SignInWithGoogleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext buildContext});
}

/// @nodoc
class __$$SignInWithGoogleImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SignInWithGoogleImpl>
    implements _$$SignInWithGoogleImplCopyWith<$Res> {
  __$$SignInWithGoogleImplCopyWithImpl(_$SignInWithGoogleImpl _value,
      $Res Function(_$SignInWithGoogleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildContext = null,
  }) {
    return _then(_$SignInWithGoogleImpl(
      buildContext: null == buildContext
          ? _value.buildContext
          : buildContext // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$SignInWithGoogleImpl implements _SignInWithGoogle {
  const _$SignInWithGoogleImpl({required this.buildContext});

  @override
  final BuildContext buildContext;

  @override
  String toString() {
    return 'LoginEvent.signInWithGoogle(buildContext: $buildContext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithGoogleImpl &&
            (identical(other.buildContext, buildContext) ||
                other.buildContext == buildContext));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buildContext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithGoogleImplCopyWith<_$SignInWithGoogleImpl> get copyWith =>
      __$$SignInWithGoogleImplCopyWithImpl<_$SignInWithGoogleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext buildContext)
        login,
    required TResult Function(BuildContext buildContext) signInWithGoogle,
  }) {
    return signInWithGoogle(buildContext);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext buildContext)?
        login,
    TResult? Function(BuildContext buildContext)? signInWithGoogle,
  }) {
    return signInWithGoogle?.call(buildContext);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext buildContext)?
        login,
    TResult Function(BuildContext buildContext)? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(buildContext);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SignInWithGoogle value) signInWithGoogle,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_SignInWithGoogle value)? signInWithGoogle,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignInWithGoogle value)? signInWithGoogle,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogle implements LoginEvent {
  const factory _SignInWithGoogle({required final BuildContext buildContext}) =
      _$SignInWithGoogleImpl;

  @override
  BuildContext get buildContext;
  @override
  @JsonKey(ignore: true)
  _$$SignInWithGoogleImplCopyWith<_$SignInWithGoogleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  bool get isLoading => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Option<Either<MainFailure, User>> get loginOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {bool isLoading, User? user, Option<Either<MainFailure, User>> loginOpt});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
    Object? loginOpt = null,
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
      loginOpt: null == loginOpt
          ? _value.loginOpt
          : loginOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, User>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, User? user, Option<Either<MainFailure, User>> loginOpt});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
    Object? loginOpt = null,
  }) {
    return _then(_$LoginStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      loginOpt: null == loginOpt
          ? _value.loginOpt
          : loginOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, User>>,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {required this.isLoading, this.user, required this.loginOpt});

  @override
  final bool isLoading;
  @override
  final User? user;
  @override
  final Option<Either<MainFailure, User>> loginOpt;

  @override
  String toString() {
    return 'LoginState(isLoading: $isLoading, user: $user, loginOpt: $loginOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.loginOpt, loginOpt) ||
                other.loginOpt == loginOpt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, user, loginOpt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
          {required final bool isLoading,
          final User? user,
          required final Option<Either<MainFailure, User>> loginOpt}) =
      _$LoginStateImpl;

  @override
  bool get isLoading;
  @override
  User? get user;
  @override
  Option<Either<MainFailure, User>> get loginOpt;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

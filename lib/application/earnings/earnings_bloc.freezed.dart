// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EarningsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTotalEarnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTotalEarnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTotalEarnings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTotalEarnings value)? getTotalEarnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsEventCopyWith<$Res> {
  factory $EarningsEventCopyWith(
          EarningsEvent value, $Res Function(EarningsEvent) then) =
      _$EarningsEventCopyWithImpl<$Res, EarningsEvent>;
}

/// @nodoc
class _$EarningsEventCopyWithImpl<$Res, $Val extends EarningsEvent>
    implements $EarningsEventCopyWith<$Res> {
  _$EarningsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetTotalEarningsCopyWith<$Res> {
  factory _$$_GetTotalEarningsCopyWith(
          _$_GetTotalEarnings value, $Res Function(_$_GetTotalEarnings) then) =
      __$$_GetTotalEarningsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetTotalEarningsCopyWithImpl<$Res>
    extends _$EarningsEventCopyWithImpl<$Res, _$_GetTotalEarnings>
    implements _$$_GetTotalEarningsCopyWith<$Res> {
  __$$_GetTotalEarningsCopyWithImpl(
      _$_GetTotalEarnings _value, $Res Function(_$_GetTotalEarnings) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetTotalEarnings implements _GetTotalEarnings {
  const _$_GetTotalEarnings();

  @override
  String toString() {
    return 'EarningsEvent.getTotalEarnings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetTotalEarnings);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getTotalEarnings,
  }) {
    return getTotalEarnings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getTotalEarnings,
  }) {
    return getTotalEarnings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (getTotalEarnings != null) {
      return getTotalEarnings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTotalEarnings value) getTotalEarnings,
  }) {
    return getTotalEarnings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTotalEarnings value)? getTotalEarnings,
  }) {
    return getTotalEarnings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTotalEarnings value)? getTotalEarnings,
    required TResult orElse(),
  }) {
    if (getTotalEarnings != null) {
      return getTotalEarnings(this);
    }
    return orElse();
  }
}

abstract class _GetTotalEarnings implements EarningsEvent {
  const factory _GetTotalEarnings() = _$_GetTotalEarnings;
}

/// @nodoc
mixin _$EarningsState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<MainFailure, EarningsModel>> get earningModelOpt =>
      throw _privateConstructorUsedError;
  EarningsModel get earningsModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EarningsStateCopyWith<EarningsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsStateCopyWith<$Res> {
  factory $EarningsStateCopyWith(
          EarningsState value, $Res Function(EarningsState) then) =
      _$EarningsStateCopyWithImpl<$Res, EarningsState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<MainFailure, EarningsModel>> earningModelOpt,
      EarningsModel earningsModel});

  $EarningsModelCopyWith<$Res> get earningsModel;
}

/// @nodoc
class _$EarningsStateCopyWithImpl<$Res, $Val extends EarningsState>
    implements $EarningsStateCopyWith<$Res> {
  _$EarningsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? earningModelOpt = null,
    Object? earningsModel = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      earningModelOpt: null == earningModelOpt
          ? _value.earningModelOpt
          : earningModelOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, EarningsModel>>,
      earningsModel: null == earningsModel
          ? _value.earningsModel
          : earningsModel // ignore: cast_nullable_to_non_nullable
              as EarningsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EarningsModelCopyWith<$Res> get earningsModel {
    return $EarningsModelCopyWith<$Res>(_value.earningsModel, (value) {
      return _then(_value.copyWith(earningsModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EarningsStateCopyWith<$Res>
    implements $EarningsStateCopyWith<$Res> {
  factory _$$_EarningsStateCopyWith(
          _$_EarningsState value, $Res Function(_$_EarningsState) then) =
      __$$_EarningsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<MainFailure, EarningsModel>> earningModelOpt,
      EarningsModel earningsModel});

  @override
  $EarningsModelCopyWith<$Res> get earningsModel;
}

/// @nodoc
class __$$_EarningsStateCopyWithImpl<$Res>
    extends _$EarningsStateCopyWithImpl<$Res, _$_EarningsState>
    implements _$$_EarningsStateCopyWith<$Res> {
  __$$_EarningsStateCopyWithImpl(
      _$_EarningsState _value, $Res Function(_$_EarningsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? earningModelOpt = null,
    Object? earningsModel = null,
  }) {
    return _then(_$_EarningsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      earningModelOpt: null == earningModelOpt
          ? _value.earningModelOpt
          : earningModelOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, EarningsModel>>,
      earningsModel: null == earningsModel
          ? _value.earningsModel
          : earningsModel // ignore: cast_nullable_to_non_nullable
              as EarningsModel,
    ));
  }
}

/// @nodoc

class _$_EarningsState implements _EarningsState {
  const _$_EarningsState(
      {required this.isLoading,
      required this.earningModelOpt,
      required this.earningsModel});

  @override
  final bool isLoading;
  @override
  final Option<Either<MainFailure, EarningsModel>> earningModelOpt;
  @override
  final EarningsModel earningsModel;

  @override
  String toString() {
    return 'EarningsState(isLoading: $isLoading, earningModelOpt: $earningModelOpt, earningsModel: $earningsModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EarningsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.earningModelOpt, earningModelOpt) ||
                other.earningModelOpt == earningModelOpt) &&
            (identical(other.earningsModel, earningsModel) ||
                other.earningsModel == earningsModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, earningModelOpt, earningsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EarningsStateCopyWith<_$_EarningsState> get copyWith =>
      __$$_EarningsStateCopyWithImpl<_$_EarningsState>(this, _$identity);
}

abstract class _EarningsState implements EarningsState {
  const factory _EarningsState(
      {required final bool isLoading,
      required final Option<Either<MainFailure, EarningsModel>> earningModelOpt,
      required final EarningsModel earningsModel}) = _$_EarningsState;

  @override
  bool get isLoading;
  @override
  Option<Either<MainFailure, EarningsModel>> get earningModelOpt;
  @override
  EarningsModel get earningsModel;
  @override
  @JsonKey(ignore: true)
  _$$_EarningsStateCopyWith<_$_EarningsState> get copyWith =>
      throw _privateConstructorUsedError;
}

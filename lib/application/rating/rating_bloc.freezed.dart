// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RatingEvent {
  RatingModel get ratingModel => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RatingModel ratingModel, BuildContext context)
        rateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RatingModel ratingModel, BuildContext context)?
        rateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RatingModel ratingModel, BuildContext context)?
        rateProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RateProduct value) rateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RateProduct value)? rateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RateProduct value)? rateProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatingEventCopyWith<RatingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingEventCopyWith<$Res> {
  factory $RatingEventCopyWith(
          RatingEvent value, $Res Function(RatingEvent) then) =
      _$RatingEventCopyWithImpl<$Res, RatingEvent>;
  @useResult
  $Res call({RatingModel ratingModel, BuildContext context});

  $RatingModelCopyWith<$Res> get ratingModel;
}

/// @nodoc
class _$RatingEventCopyWithImpl<$Res, $Val extends RatingEvent>
    implements $RatingEventCopyWith<$Res> {
  _$RatingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ratingModel = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      ratingModel: null == ratingModel
          ? _value.ratingModel
          : ratingModel // ignore: cast_nullable_to_non_nullable
              as RatingModel,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingModelCopyWith<$Res> get ratingModel {
    return $RatingModelCopyWith<$Res>(_value.ratingModel, (value) {
      return _then(_value.copyWith(ratingModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RateProductCopyWith<$Res>
    implements $RatingEventCopyWith<$Res> {
  factory _$$_RateProductCopyWith(
          _$_RateProduct value, $Res Function(_$_RateProduct) then) =
      __$$_RateProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RatingModel ratingModel, BuildContext context});

  @override
  $RatingModelCopyWith<$Res> get ratingModel;
}

/// @nodoc
class __$$_RateProductCopyWithImpl<$Res>
    extends _$RatingEventCopyWithImpl<$Res, _$_RateProduct>
    implements _$$_RateProductCopyWith<$Res> {
  __$$_RateProductCopyWithImpl(
      _$_RateProduct _value, $Res Function(_$_RateProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ratingModel = null,
    Object? context = null,
  }) {
    return _then(_$_RateProduct(
      ratingModel: null == ratingModel
          ? _value.ratingModel
          : ratingModel // ignore: cast_nullable_to_non_nullable
              as RatingModel,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_RateProduct implements _RateProduct {
  const _$_RateProduct({required this.ratingModel, required this.context});

  @override
  final RatingModel ratingModel;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'RatingEvent.rateProduct(ratingModel: $ratingModel, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RateProduct &&
            (identical(other.ratingModel, ratingModel) ||
                other.ratingModel == ratingModel) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ratingModel, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RateProductCopyWith<_$_RateProduct> get copyWith =>
      __$$_RateProductCopyWithImpl<_$_RateProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RatingModel ratingModel, BuildContext context)
        rateProduct,
  }) {
    return rateProduct(ratingModel, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RatingModel ratingModel, BuildContext context)?
        rateProduct,
  }) {
    return rateProduct?.call(ratingModel, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RatingModel ratingModel, BuildContext context)?
        rateProduct,
    required TResult orElse(),
  }) {
    if (rateProduct != null) {
      return rateProduct(ratingModel, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RateProduct value) rateProduct,
  }) {
    return rateProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RateProduct value)? rateProduct,
  }) {
    return rateProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RateProduct value)? rateProduct,
    required TResult orElse(),
  }) {
    if (rateProduct != null) {
      return rateProduct(this);
    }
    return orElse();
  }
}

abstract class _RateProduct implements RatingEvent {
  const factory _RateProduct(
      {required final RatingModel ratingModel,
      required final BuildContext context}) = _$_RateProduct;

  @override
  RatingModel get ratingModel;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_RateProductCopyWith<_$_RateProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RatingState {
  bool get isLoading => throw _privateConstructorUsedError;
  RatingModel get rating => throw _privateConstructorUsedError;
  Option<Either<MainFailure, RatingModel>> get ratingOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RatingStateCopyWith<RatingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingStateCopyWith<$Res> {
  factory $RatingStateCopyWith(
          RatingState value, $Res Function(RatingState) then) =
      _$RatingStateCopyWithImpl<$Res, RatingState>;
  @useResult
  $Res call(
      {bool isLoading,
      RatingModel rating,
      Option<Either<MainFailure, RatingModel>> ratingOpt});

  $RatingModelCopyWith<$Res> get rating;
}

/// @nodoc
class _$RatingStateCopyWithImpl<$Res, $Val extends RatingState>
    implements $RatingStateCopyWith<$Res> {
  _$RatingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? rating = null,
    Object? ratingOpt = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingModel,
      ratingOpt: null == ratingOpt
          ? _value.ratingOpt
          : ratingOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, RatingModel>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingModelCopyWith<$Res> get rating {
    return $RatingModelCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RatingStateCopyWith<$Res>
    implements $RatingStateCopyWith<$Res> {
  factory _$$_RatingStateCopyWith(
          _$_RatingState value, $Res Function(_$_RatingState) then) =
      __$$_RatingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      RatingModel rating,
      Option<Either<MainFailure, RatingModel>> ratingOpt});

  @override
  $RatingModelCopyWith<$Res> get rating;
}

/// @nodoc
class __$$_RatingStateCopyWithImpl<$Res>
    extends _$RatingStateCopyWithImpl<$Res, _$_RatingState>
    implements _$$_RatingStateCopyWith<$Res> {
  __$$_RatingStateCopyWithImpl(
      _$_RatingState _value, $Res Function(_$_RatingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? rating = null,
    Object? ratingOpt = null,
  }) {
    return _then(_$_RatingState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingModel,
      ratingOpt: null == ratingOpt
          ? _value.ratingOpt
          : ratingOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, RatingModel>>,
    ));
  }
}

/// @nodoc

class _$_RatingState implements _RatingState {
  const _$_RatingState(
      {required this.isLoading, required this.rating, required this.ratingOpt});

  @override
  final bool isLoading;
  @override
  final RatingModel rating;
  @override
  final Option<Either<MainFailure, RatingModel>> ratingOpt;

  @override
  String toString() {
    return 'RatingState(isLoading: $isLoading, rating: $rating, ratingOpt: $ratingOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RatingState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingOpt, ratingOpt) ||
                other.ratingOpt == ratingOpt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, rating, ratingOpt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RatingStateCopyWith<_$_RatingState> get copyWith =>
      __$$_RatingStateCopyWithImpl<_$_RatingState>(this, _$identity);
}

abstract class _RatingState implements RatingState {
  const factory _RatingState(
          {required final bool isLoading,
          required final RatingModel rating,
          required final Option<Either<MainFailure, RatingModel>> ratingOpt}) =
      _$_RatingState;

  @override
  bool get isLoading;
  @override
  RatingModel get rating;
  @override
  Option<Either<MainFailure, RatingModel>> get ratingOpt;
  @override
  @JsonKey(ignore: true)
  _$$_RatingStateCopyWith<_$_RatingState> get copyWith =>
      throw _privateConstructorUsedError;
}

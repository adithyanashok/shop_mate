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
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RatingModel ratingModel, BuildContext context)
        rateProduct,
    required TResult Function(String productId, BuildContext context)
        fetchRatings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RatingModel ratingModel, BuildContext context)?
        rateProduct,
    TResult? Function(String productId, BuildContext context)? fetchRatings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RatingModel ratingModel, BuildContext context)?
        rateProduct,
    TResult Function(String productId, BuildContext context)? fetchRatings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RateProduct value) rateProduct,
    required TResult Function(_FetchRatings value) fetchRatings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RateProduct value)? rateProduct,
    TResult? Function(_FetchRatings value)? fetchRatings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RateProduct value)? rateProduct,
    TResult Function(_FetchRatings value)? fetchRatings,
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
  $Res call({BuildContext context});
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
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RateProductImplCopyWith<$Res>
    implements $RatingEventCopyWith<$Res> {
  factory _$$RateProductImplCopyWith(
          _$RateProductImpl value, $Res Function(_$RateProductImpl) then) =
      __$$RateProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RatingModel ratingModel, BuildContext context});

  $RatingModelCopyWith<$Res> get ratingModel;
}

/// @nodoc
class __$$RateProductImplCopyWithImpl<$Res>
    extends _$RatingEventCopyWithImpl<$Res, _$RateProductImpl>
    implements _$$RateProductImplCopyWith<$Res> {
  __$$RateProductImplCopyWithImpl(
      _$RateProductImpl _value, $Res Function(_$RateProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ratingModel = null,
    Object? context = null,
  }) {
    return _then(_$RateProductImpl(
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

  @override
  @pragma('vm:prefer-inline')
  $RatingModelCopyWith<$Res> get ratingModel {
    return $RatingModelCopyWith<$Res>(_value.ratingModel, (value) {
      return _then(_value.copyWith(ratingModel: value));
    });
  }
}

/// @nodoc

class _$RateProductImpl implements _RateProduct {
  const _$RateProductImpl({required this.ratingModel, required this.context});

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
            other is _$RateProductImpl &&
            (identical(other.ratingModel, ratingModel) ||
                other.ratingModel == ratingModel) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ratingModel, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RateProductImplCopyWith<_$RateProductImpl> get copyWith =>
      __$$RateProductImplCopyWithImpl<_$RateProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RatingModel ratingModel, BuildContext context)
        rateProduct,
    required TResult Function(String productId, BuildContext context)
        fetchRatings,
  }) {
    return rateProduct(ratingModel, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RatingModel ratingModel, BuildContext context)?
        rateProduct,
    TResult? Function(String productId, BuildContext context)? fetchRatings,
  }) {
    return rateProduct?.call(ratingModel, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RatingModel ratingModel, BuildContext context)?
        rateProduct,
    TResult Function(String productId, BuildContext context)? fetchRatings,
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
    required TResult Function(_FetchRatings value) fetchRatings,
  }) {
    return rateProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RateProduct value)? rateProduct,
    TResult? Function(_FetchRatings value)? fetchRatings,
  }) {
    return rateProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RateProduct value)? rateProduct,
    TResult Function(_FetchRatings value)? fetchRatings,
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
      required final BuildContext context}) = _$RateProductImpl;

  RatingModel get ratingModel;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$RateProductImplCopyWith<_$RateProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchRatingsImplCopyWith<$Res>
    implements $RatingEventCopyWith<$Res> {
  factory _$$FetchRatingsImplCopyWith(
          _$FetchRatingsImpl value, $Res Function(_$FetchRatingsImpl) then) =
      __$$FetchRatingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productId, BuildContext context});
}

/// @nodoc
class __$$FetchRatingsImplCopyWithImpl<$Res>
    extends _$RatingEventCopyWithImpl<$Res, _$FetchRatingsImpl>
    implements _$$FetchRatingsImplCopyWith<$Res> {
  __$$FetchRatingsImplCopyWithImpl(
      _$FetchRatingsImpl _value, $Res Function(_$FetchRatingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? context = null,
  }) {
    return _then(_$FetchRatingsImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$FetchRatingsImpl implements _FetchRatings {
  const _$FetchRatingsImpl({required this.productId, required this.context});

  @override
  final String productId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'RatingEvent.fetchRatings(productId: $productId, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRatingsImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRatingsImplCopyWith<_$FetchRatingsImpl> get copyWith =>
      __$$FetchRatingsImplCopyWithImpl<_$FetchRatingsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RatingModel ratingModel, BuildContext context)
        rateProduct,
    required TResult Function(String productId, BuildContext context)
        fetchRatings,
  }) {
    return fetchRatings(productId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RatingModel ratingModel, BuildContext context)?
        rateProduct,
    TResult? Function(String productId, BuildContext context)? fetchRatings,
  }) {
    return fetchRatings?.call(productId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RatingModel ratingModel, BuildContext context)?
        rateProduct,
    TResult Function(String productId, BuildContext context)? fetchRatings,
    required TResult orElse(),
  }) {
    if (fetchRatings != null) {
      return fetchRatings(productId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RateProduct value) rateProduct,
    required TResult Function(_FetchRatings value) fetchRatings,
  }) {
    return fetchRatings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RateProduct value)? rateProduct,
    TResult? Function(_FetchRatings value)? fetchRatings,
  }) {
    return fetchRatings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RateProduct value)? rateProduct,
    TResult Function(_FetchRatings value)? fetchRatings,
    required TResult orElse(),
  }) {
    if (fetchRatings != null) {
      return fetchRatings(this);
    }
    return orElse();
  }
}

abstract class _FetchRatings implements RatingEvent {
  const factory _FetchRatings(
      {required final String productId,
      required final BuildContext context}) = _$FetchRatingsImpl;

  String get productId;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$FetchRatingsImplCopyWith<_$FetchRatingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RatingState {
  bool get isLoading => throw _privateConstructorUsedError;
  RatingModel get rating => throw _privateConstructorUsedError;
  List<RatingModel> get ratings => throw _privateConstructorUsedError;
  Option<Either<MainFailure, RatingModel>> get ratingOpt =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<RatingModel>>> get ratingListOpt =>
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
      List<RatingModel> ratings,
      Option<Either<MainFailure, RatingModel>> ratingOpt,
      Option<Either<MainFailure, List<RatingModel>>> ratingListOpt});

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
    Object? ratings = null,
    Object? ratingOpt = null,
    Object? ratingListOpt = null,
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
      ratings: null == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<RatingModel>,
      ratingOpt: null == ratingOpt
          ? _value.ratingOpt
          : ratingOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, RatingModel>>,
      ratingListOpt: null == ratingListOpt
          ? _value.ratingListOpt
          : ratingListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<RatingModel>>>,
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
abstract class _$$RatingStateImplCopyWith<$Res>
    implements $RatingStateCopyWith<$Res> {
  factory _$$RatingStateImplCopyWith(
          _$RatingStateImpl value, $Res Function(_$RatingStateImpl) then) =
      __$$RatingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      RatingModel rating,
      List<RatingModel> ratings,
      Option<Either<MainFailure, RatingModel>> ratingOpt,
      Option<Either<MainFailure, List<RatingModel>>> ratingListOpt});

  @override
  $RatingModelCopyWith<$Res> get rating;
}

/// @nodoc
class __$$RatingStateImplCopyWithImpl<$Res>
    extends _$RatingStateCopyWithImpl<$Res, _$RatingStateImpl>
    implements _$$RatingStateImplCopyWith<$Res> {
  __$$RatingStateImplCopyWithImpl(
      _$RatingStateImpl _value, $Res Function(_$RatingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? rating = null,
    Object? ratings = null,
    Object? ratingOpt = null,
    Object? ratingListOpt = null,
  }) {
    return _then(_$RatingStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingModel,
      ratings: null == ratings
          ? _value._ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<RatingModel>,
      ratingOpt: null == ratingOpt
          ? _value.ratingOpt
          : ratingOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, RatingModel>>,
      ratingListOpt: null == ratingListOpt
          ? _value.ratingListOpt
          : ratingListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<RatingModel>>>,
    ));
  }
}

/// @nodoc

class _$RatingStateImpl implements _RatingState {
  const _$RatingStateImpl(
      {required this.isLoading,
      required this.rating,
      required final List<RatingModel> ratings,
      required this.ratingOpt,
      required this.ratingListOpt})
      : _ratings = ratings;

  @override
  final bool isLoading;
  @override
  final RatingModel rating;
  final List<RatingModel> _ratings;
  @override
  List<RatingModel> get ratings {
    if (_ratings is EqualUnmodifiableListView) return _ratings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ratings);
  }

  @override
  final Option<Either<MainFailure, RatingModel>> ratingOpt;
  @override
  final Option<Either<MainFailure, List<RatingModel>>> ratingListOpt;

  @override
  String toString() {
    return 'RatingState(isLoading: $isLoading, rating: $rating, ratings: $ratings, ratingOpt: $ratingOpt, ratingListOpt: $ratingListOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._ratings, _ratings) &&
            (identical(other.ratingOpt, ratingOpt) ||
                other.ratingOpt == ratingOpt) &&
            (identical(other.ratingListOpt, ratingListOpt) ||
                other.ratingListOpt == ratingListOpt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, rating,
      const DeepCollectionEquality().hash(_ratings), ratingOpt, ratingListOpt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingStateImplCopyWith<_$RatingStateImpl> get copyWith =>
      __$$RatingStateImplCopyWithImpl<_$RatingStateImpl>(this, _$identity);
}

abstract class _RatingState implements RatingState {
  const factory _RatingState(
      {required final bool isLoading,
      required final RatingModel rating,
      required final List<RatingModel> ratings,
      required final Option<Either<MainFailure, RatingModel>> ratingOpt,
      required final Option<Either<MainFailure, List<RatingModel>>>
          ratingListOpt}) = _$RatingStateImpl;

  @override
  bool get isLoading;
  @override
  RatingModel get rating;
  @override
  List<RatingModel> get ratings;
  @override
  Option<Either<MainFailure, RatingModel>> get ratingOpt;
  @override
  Option<Either<MainFailure, List<RatingModel>>> get ratingListOpt;
  @override
  @JsonKey(ignore: true)
  _$$RatingStateImplCopyWith<_$RatingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

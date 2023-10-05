// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersEvent {
  OrderModel get orderModel => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderModel orderModel, BuildContext context)
        placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderModel orderModel, BuildContext context)? placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderModel orderModel, BuildContext context)? placeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrder value) placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceOrder value)? placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersEventCopyWith<OrdersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
  @useResult
  $Res call({OrderModel orderModel, BuildContext context});

  $OrderModelCopyWith<$Res> get orderModel;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderModel = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      orderModel: null == orderModel
          ? _value.orderModel
          : orderModel // ignore: cast_nullable_to_non_nullable
              as OrderModel,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<$Res> get orderModel {
    return $OrderModelCopyWith<$Res>(_value.orderModel, (value) {
      return _then(_value.copyWith(orderModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlaceOrderCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory _$$_PlaceOrderCopyWith(
          _$_PlaceOrder value, $Res Function(_$_PlaceOrder) then) =
      __$$_PlaceOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderModel orderModel, BuildContext context});

  @override
  $OrderModelCopyWith<$Res> get orderModel;
}

/// @nodoc
class __$$_PlaceOrderCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$_PlaceOrder>
    implements _$$_PlaceOrderCopyWith<$Res> {
  __$$_PlaceOrderCopyWithImpl(
      _$_PlaceOrder _value, $Res Function(_$_PlaceOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderModel = null,
    Object? context = null,
  }) {
    return _then(_$_PlaceOrder(
      orderModel: null == orderModel
          ? _value.orderModel
          : orderModel // ignore: cast_nullable_to_non_nullable
              as OrderModel,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_PlaceOrder implements _PlaceOrder {
  const _$_PlaceOrder({required this.orderModel, required this.context});

  @override
  final OrderModel orderModel;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'OrdersEvent.placeOrder(orderModel: $orderModel, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceOrder &&
            (identical(other.orderModel, orderModel) ||
                other.orderModel == orderModel) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderModel, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceOrderCopyWith<_$_PlaceOrder> get copyWith =>
      __$$_PlaceOrderCopyWithImpl<_$_PlaceOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderModel orderModel, BuildContext context)
        placeOrder,
  }) {
    return placeOrder(orderModel, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderModel orderModel, BuildContext context)? placeOrder,
  }) {
    return placeOrder?.call(orderModel, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderModel orderModel, BuildContext context)? placeOrder,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(orderModel, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrder value) placeOrder,
  }) {
    return placeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceOrder value)? placeOrder,
  }) {
    return placeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(this);
    }
    return orElse();
  }
}

abstract class _PlaceOrder implements OrdersEvent {
  const factory _PlaceOrder(
      {required final OrderModel orderModel,
      required final BuildContext context}) = _$_PlaceOrder;

  @override
  OrderModel get orderModel;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceOrderCopyWith<_$_PlaceOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrdersState {
  bool get isLoading => throw _privateConstructorUsedError;
  OrderModel get orderModel => throw _privateConstructorUsedError;
  Option<Either<MainFailure, OrderModel>> get orderOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersStateCopyWith<OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
  @useResult
  $Res call(
      {bool isLoading,
      OrderModel orderModel,
      Option<Either<MainFailure, OrderModel>> orderOpt});

  $OrderModelCopyWith<$Res> get orderModel;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? orderModel = null,
    Object? orderOpt = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderModel: null == orderModel
          ? _value.orderModel
          : orderModel // ignore: cast_nullable_to_non_nullable
              as OrderModel,
      orderOpt: null == orderOpt
          ? _value.orderOpt
          : orderOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, OrderModel>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<$Res> get orderModel {
    return $OrderModelCopyWith<$Res>(_value.orderModel, (value) {
      return _then(_value.copyWith(orderModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrdersStateCopyWith<$Res>
    implements $OrdersStateCopyWith<$Res> {
  factory _$$_OrdersStateCopyWith(
          _$_OrdersState value, $Res Function(_$_OrdersState) then) =
      __$$_OrdersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      OrderModel orderModel,
      Option<Either<MainFailure, OrderModel>> orderOpt});

  @override
  $OrderModelCopyWith<$Res> get orderModel;
}

/// @nodoc
class __$$_OrdersStateCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$_OrdersState>
    implements _$$_OrdersStateCopyWith<$Res> {
  __$$_OrdersStateCopyWithImpl(
      _$_OrdersState _value, $Res Function(_$_OrdersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? orderModel = null,
    Object? orderOpt = null,
  }) {
    return _then(_$_OrdersState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orderModel: null == orderModel
          ? _value.orderModel
          : orderModel // ignore: cast_nullable_to_non_nullable
              as OrderModel,
      orderOpt: null == orderOpt
          ? _value.orderOpt
          : orderOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, OrderModel>>,
    ));
  }
}

/// @nodoc

class _$_OrdersState implements _OrdersState {
  const _$_OrdersState(
      {required this.isLoading,
      required this.orderModel,
      required this.orderOpt});

  @override
  final bool isLoading;
  @override
  final OrderModel orderModel;
  @override
  final Option<Either<MainFailure, OrderModel>> orderOpt;

  @override
  String toString() {
    return 'OrdersState(isLoading: $isLoading, orderModel: $orderModel, orderOpt: $orderOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrdersState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.orderModel, orderModel) ||
                other.orderModel == orderModel) &&
            (identical(other.orderOpt, orderOpt) ||
                other.orderOpt == orderOpt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, orderModel, orderOpt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrdersStateCopyWith<_$_OrdersState> get copyWith =>
      __$$_OrdersStateCopyWithImpl<_$_OrdersState>(this, _$identity);
}

abstract class _OrdersState implements OrdersState {
  const factory _OrdersState(
          {required final bool isLoading,
          required final OrderModel orderModel,
          required final Option<Either<MainFailure, OrderModel>> orderOpt}) =
      _$_OrdersState;

  @override
  bool get isLoading;
  @override
  OrderModel get orderModel;
  @override
  Option<Either<MainFailure, OrderModel>> get orderOpt;
  @override
  @JsonKey(ignore: true)
  _$$_OrdersStateCopyWith<_$_OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

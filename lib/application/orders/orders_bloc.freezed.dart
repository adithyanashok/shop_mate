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
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderModel orderModel, BuildContext context)
        placeOrder,
    required TResult Function(BuildContext context) getAllOrders,
    required TResult Function(BuildContext context, String id) getAOrder,
    required TResult Function(BuildContext context, String id, String value,
            DateTime date, String update)
        updateOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderModel orderModel, BuildContext context)? placeOrder,
    TResult? Function(BuildContext context)? getAllOrders,
    TResult? Function(BuildContext context, String id)? getAOrder,
    TResult? Function(BuildContext context, String id, String value,
            DateTime date, String update)?
        updateOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderModel orderModel, BuildContext context)? placeOrder,
    TResult Function(BuildContext context)? getAllOrders,
    TResult Function(BuildContext context, String id)? getAOrder,
    TResult Function(BuildContext context, String id, String value,
            DateTime date, String update)?
        updateOrderStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_GetAllOrders value) getAllOrders,
    required TResult Function(_GetAOrder value) getAOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_GetAllOrders value)? getAllOrders,
    TResult? Function(_GetAOrder value)? getAOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_GetAllOrders value)? getAllOrders,
    TResult Function(_GetAOrder value)? getAOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
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
  $Res call({BuildContext context});
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
abstract class _$$_PlaceOrderCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory _$$_PlaceOrderCopyWith(
          _$_PlaceOrder value, $Res Function(_$_PlaceOrder) then) =
      __$$_PlaceOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderModel orderModel, BuildContext context});

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

  @override
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<$Res> get orderModel {
    return $OrderModelCopyWith<$Res>(_value.orderModel, (value) {
      return _then(_value.copyWith(orderModel: value));
    });
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
    required TResult Function(BuildContext context) getAllOrders,
    required TResult Function(BuildContext context, String id) getAOrder,
    required TResult Function(BuildContext context, String id, String value,
            DateTime date, String update)
        updateOrderStatus,
  }) {
    return placeOrder(orderModel, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderModel orderModel, BuildContext context)? placeOrder,
    TResult? Function(BuildContext context)? getAllOrders,
    TResult? Function(BuildContext context, String id)? getAOrder,
    TResult? Function(BuildContext context, String id, String value,
            DateTime date, String update)?
        updateOrderStatus,
  }) {
    return placeOrder?.call(orderModel, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderModel orderModel, BuildContext context)? placeOrder,
    TResult Function(BuildContext context)? getAllOrders,
    TResult Function(BuildContext context, String id)? getAOrder,
    TResult Function(BuildContext context, String id, String value,
            DateTime date, String update)?
        updateOrderStatus,
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
    required TResult Function(_GetAllOrders value) getAllOrders,
    required TResult Function(_GetAOrder value) getAOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
  }) {
    return placeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_GetAllOrders value)? getAllOrders,
    TResult? Function(_GetAOrder value)? getAOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
  }) {
    return placeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_GetAllOrders value)? getAllOrders,
    TResult Function(_GetAOrder value)? getAOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
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

  OrderModel get orderModel;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceOrderCopyWith<_$_PlaceOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllOrdersCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory _$$_GetAllOrdersCopyWith(
          _$_GetAllOrders value, $Res Function(_$_GetAllOrders) then) =
      __$$_GetAllOrdersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_GetAllOrdersCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$_GetAllOrders>
    implements _$$_GetAllOrdersCopyWith<$Res> {
  __$$_GetAllOrdersCopyWithImpl(
      _$_GetAllOrders _value, $Res Function(_$_GetAllOrders) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_GetAllOrders(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_GetAllOrders implements _GetAllOrders {
  const _$_GetAllOrders({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'OrdersEvent.getAllOrders(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAllOrders &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAllOrdersCopyWith<_$_GetAllOrders> get copyWith =>
      __$$_GetAllOrdersCopyWithImpl<_$_GetAllOrders>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderModel orderModel, BuildContext context)
        placeOrder,
    required TResult Function(BuildContext context) getAllOrders,
    required TResult Function(BuildContext context, String id) getAOrder,
    required TResult Function(BuildContext context, String id, String value,
            DateTime date, String update)
        updateOrderStatus,
  }) {
    return getAllOrders(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderModel orderModel, BuildContext context)? placeOrder,
    TResult? Function(BuildContext context)? getAllOrders,
    TResult? Function(BuildContext context, String id)? getAOrder,
    TResult? Function(BuildContext context, String id, String value,
            DateTime date, String update)?
        updateOrderStatus,
  }) {
    return getAllOrders?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderModel orderModel, BuildContext context)? placeOrder,
    TResult Function(BuildContext context)? getAllOrders,
    TResult Function(BuildContext context, String id)? getAOrder,
    TResult Function(BuildContext context, String id, String value,
            DateTime date, String update)?
        updateOrderStatus,
    required TResult orElse(),
  }) {
    if (getAllOrders != null) {
      return getAllOrders(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_GetAllOrders value) getAllOrders,
    required TResult Function(_GetAOrder value) getAOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
  }) {
    return getAllOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_GetAllOrders value)? getAllOrders,
    TResult? Function(_GetAOrder value)? getAOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
  }) {
    return getAllOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_GetAllOrders value)? getAllOrders,
    TResult Function(_GetAOrder value)? getAOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    required TResult orElse(),
  }) {
    if (getAllOrders != null) {
      return getAllOrders(this);
    }
    return orElse();
  }
}

abstract class _GetAllOrders implements OrdersEvent {
  const factory _GetAllOrders({required final BuildContext context}) =
      _$_GetAllOrders;

  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_GetAllOrdersCopyWith<_$_GetAllOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAOrderCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory _$$_GetAOrderCopyWith(
          _$_GetAOrder value, $Res Function(_$_GetAOrder) then) =
      __$$_GetAOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, String id});
}

/// @nodoc
class __$$_GetAOrderCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$_GetAOrder>
    implements _$$_GetAOrderCopyWith<$Res> {
  __$$_GetAOrderCopyWithImpl(
      _$_GetAOrder _value, $Res Function(_$_GetAOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? id = null,
  }) {
    return _then(_$_GetAOrder(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetAOrder implements _GetAOrder {
  const _$_GetAOrder({required this.context, required this.id});

  @override
  final BuildContext context;
  @override
  final String id;

  @override
  String toString() {
    return 'OrdersEvent.getAOrder(context: $context, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAOrder &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAOrderCopyWith<_$_GetAOrder> get copyWith =>
      __$$_GetAOrderCopyWithImpl<_$_GetAOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderModel orderModel, BuildContext context)
        placeOrder,
    required TResult Function(BuildContext context) getAllOrders,
    required TResult Function(BuildContext context, String id) getAOrder,
    required TResult Function(BuildContext context, String id, String value,
            DateTime date, String update)
        updateOrderStatus,
  }) {
    return getAOrder(context, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderModel orderModel, BuildContext context)? placeOrder,
    TResult? Function(BuildContext context)? getAllOrders,
    TResult? Function(BuildContext context, String id)? getAOrder,
    TResult? Function(BuildContext context, String id, String value,
            DateTime date, String update)?
        updateOrderStatus,
  }) {
    return getAOrder?.call(context, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderModel orderModel, BuildContext context)? placeOrder,
    TResult Function(BuildContext context)? getAllOrders,
    TResult Function(BuildContext context, String id)? getAOrder,
    TResult Function(BuildContext context, String id, String value,
            DateTime date, String update)?
        updateOrderStatus,
    required TResult orElse(),
  }) {
    if (getAOrder != null) {
      return getAOrder(context, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_GetAllOrders value) getAllOrders,
    required TResult Function(_GetAOrder value) getAOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
  }) {
    return getAOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_GetAllOrders value)? getAllOrders,
    TResult? Function(_GetAOrder value)? getAOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
  }) {
    return getAOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_GetAllOrders value)? getAllOrders,
    TResult Function(_GetAOrder value)? getAOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    required TResult orElse(),
  }) {
    if (getAOrder != null) {
      return getAOrder(this);
    }
    return orElse();
  }
}

abstract class _GetAOrder implements OrdersEvent {
  const factory _GetAOrder(
      {required final BuildContext context,
      required final String id}) = _$_GetAOrder;

  @override
  BuildContext get context;
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_GetAOrderCopyWith<_$_GetAOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateOrderStatusCopyWith<$Res>
    implements $OrdersEventCopyWith<$Res> {
  factory _$$_UpdateOrderStatusCopyWith(_$_UpdateOrderStatus value,
          $Res Function(_$_UpdateOrderStatus) then) =
      __$$_UpdateOrderStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BuildContext context,
      String id,
      String value,
      DateTime date,
      String update});
}

/// @nodoc
class __$$_UpdateOrderStatusCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$_UpdateOrderStatus>
    implements _$$_UpdateOrderStatusCopyWith<$Res> {
  __$$_UpdateOrderStatusCopyWithImpl(
      _$_UpdateOrderStatus _value, $Res Function(_$_UpdateOrderStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? id = null,
    Object? value = null,
    Object? date = null,
    Object? update = null,
  }) {
    return _then(_$_UpdateOrderStatus(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      update: null == update
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateOrderStatus implements _UpdateOrderStatus {
  const _$_UpdateOrderStatus(
      {required this.context,
      required this.id,
      required this.value,
      required this.date,
      required this.update});

  @override
  final BuildContext context;
  @override
  final String id;
  @override
  final String value;
  @override
  final DateTime date;
  @override
  final String update;

  @override
  String toString() {
    return 'OrdersEvent.updateOrderStatus(context: $context, id: $id, value: $value, date: $date, update: $update)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateOrderStatus &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.update, update) || other.update == update));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, id, value, date, update);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateOrderStatusCopyWith<_$_UpdateOrderStatus> get copyWith =>
      __$$_UpdateOrderStatusCopyWithImpl<_$_UpdateOrderStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderModel orderModel, BuildContext context)
        placeOrder,
    required TResult Function(BuildContext context) getAllOrders,
    required TResult Function(BuildContext context, String id) getAOrder,
    required TResult Function(BuildContext context, String id, String value,
            DateTime date, String update)
        updateOrderStatus,
  }) {
    return updateOrderStatus(context, id, value, date, update);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderModel orderModel, BuildContext context)? placeOrder,
    TResult? Function(BuildContext context)? getAllOrders,
    TResult? Function(BuildContext context, String id)? getAOrder,
    TResult? Function(BuildContext context, String id, String value,
            DateTime date, String update)?
        updateOrderStatus,
  }) {
    return updateOrderStatus?.call(context, id, value, date, update);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderModel orderModel, BuildContext context)? placeOrder,
    TResult Function(BuildContext context)? getAllOrders,
    TResult Function(BuildContext context, String id)? getAOrder,
    TResult Function(BuildContext context, String id, String value,
            DateTime date, String update)?
        updateOrderStatus,
    required TResult orElse(),
  }) {
    if (updateOrderStatus != null) {
      return updateOrderStatus(context, id, value, date, update);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlaceOrder value) placeOrder,
    required TResult Function(_GetAllOrders value) getAllOrders,
    required TResult Function(_GetAOrder value) getAOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
  }) {
    return updateOrderStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlaceOrder value)? placeOrder,
    TResult? Function(_GetAllOrders value)? getAllOrders,
    TResult? Function(_GetAOrder value)? getAOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
  }) {
    return updateOrderStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlaceOrder value)? placeOrder,
    TResult Function(_GetAllOrders value)? getAllOrders,
    TResult Function(_GetAOrder value)? getAOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    required TResult orElse(),
  }) {
    if (updateOrderStatus != null) {
      return updateOrderStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateOrderStatus implements OrdersEvent {
  const factory _UpdateOrderStatus(
      {required final BuildContext context,
      required final String id,
      required final String value,
      required final DateTime date,
      required final String update}) = _$_UpdateOrderStatus;

  @override
  BuildContext get context;
  String get id;
  String get value;
  DateTime get date;
  String get update;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateOrderStatusCopyWith<_$_UpdateOrderStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrdersState {
  bool get isLoading => throw _privateConstructorUsedError;
  OrderModel get orderModel => throw _privateConstructorUsedError;
  List<OrderModel> get orderModelList => throw _privateConstructorUsedError;
  Option<Either<MainFailure, OrderModel>> get orderOpt =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<OrderModel>>> get orderOptList =>
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
      List<OrderModel> orderModelList,
      Option<Either<MainFailure, OrderModel>> orderOpt,
      Option<Either<MainFailure, List<OrderModel>>> orderOptList});

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
    Object? orderModelList = null,
    Object? orderOpt = null,
    Object? orderOptList = null,
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
      orderModelList: null == orderModelList
          ? _value.orderModelList
          : orderModelList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      orderOpt: null == orderOpt
          ? _value.orderOpt
          : orderOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, OrderModel>>,
      orderOptList: null == orderOptList
          ? _value.orderOptList
          : orderOptList // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<OrderModel>>>,
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
      List<OrderModel> orderModelList,
      Option<Either<MainFailure, OrderModel>> orderOpt,
      Option<Either<MainFailure, List<OrderModel>>> orderOptList});

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
    Object? orderModelList = null,
    Object? orderOpt = null,
    Object? orderOptList = null,
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
      orderModelList: null == orderModelList
          ? _value._orderModelList
          : orderModelList // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
      orderOpt: null == orderOpt
          ? _value.orderOpt
          : orderOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, OrderModel>>,
      orderOptList: null == orderOptList
          ? _value.orderOptList
          : orderOptList // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<OrderModel>>>,
    ));
  }
}

/// @nodoc

class _$_OrdersState implements _OrdersState {
  const _$_OrdersState(
      {required this.isLoading,
      required this.orderModel,
      required final List<OrderModel> orderModelList,
      required this.orderOpt,
      required this.orderOptList})
      : _orderModelList = orderModelList;

  @override
  final bool isLoading;
  @override
  final OrderModel orderModel;
  final List<OrderModel> _orderModelList;
  @override
  List<OrderModel> get orderModelList {
    if (_orderModelList is EqualUnmodifiableListView) return _orderModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderModelList);
  }

  @override
  final Option<Either<MainFailure, OrderModel>> orderOpt;
  @override
  final Option<Either<MainFailure, List<OrderModel>>> orderOptList;

  @override
  String toString() {
    return 'OrdersState(isLoading: $isLoading, orderModel: $orderModel, orderModelList: $orderModelList, orderOpt: $orderOpt, orderOptList: $orderOptList)';
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
            const DeepCollectionEquality()
                .equals(other._orderModelList, _orderModelList) &&
            (identical(other.orderOpt, orderOpt) ||
                other.orderOpt == orderOpt) &&
            (identical(other.orderOptList, orderOptList) ||
                other.orderOptList == orderOptList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      orderModel,
      const DeepCollectionEquality().hash(_orderModelList),
      orderOpt,
      orderOptList);

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
      required final List<OrderModel> orderModelList,
      required final Option<Either<MainFailure, OrderModel>> orderOpt,
      required final Option<Either<MainFailure, List<OrderModel>>>
          orderOptList}) = _$_OrdersState;

  @override
  bool get isLoading;
  @override
  OrderModel get orderModel;
  @override
  List<OrderModel> get orderModelList;
  @override
  Option<Either<MainFailure, OrderModel>> get orderOpt;
  @override
  Option<Either<MainFailure, List<OrderModel>>> get orderOptList;
  @override
  @JsonKey(ignore: true)
  _$$_OrdersStateCopyWith<_$_OrdersState> get copyWith =>
      throw _privateConstructorUsedError;
}

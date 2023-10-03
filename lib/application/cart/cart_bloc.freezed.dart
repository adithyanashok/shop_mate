// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel cartModel, BuildContext context)
        addToCart,
    required TResult Function(String userId, BuildContext context) getCart,
    required TResult Function(
            CartModel cartModel, String type, BuildContext context)
        incrementQty,
    required TResult Function(String userId, String id, int quantity,
            double price, String type, BuildContext context)
        decrementCartQty,
    required TResult Function(CartModel cartModel, BuildContext context)
        deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel cartModel, BuildContext context)? addToCart,
    TResult? Function(String userId, BuildContext context)? getCart,
    TResult? Function(CartModel cartModel, String type, BuildContext context)?
        incrementQty,
    TResult? Function(String userId, String id, int quantity, double price,
            String type, BuildContext context)?
        decrementCartQty,
    TResult? Function(CartModel cartModel, BuildContext context)? deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel cartModel, BuildContext context)? addToCart,
    TResult Function(String userId, BuildContext context)? getCart,
    TResult Function(CartModel cartModel, String type, BuildContext context)?
        incrementQty,
    TResult Function(String userId, String id, int quantity, double price,
            String type, BuildContext context)?
        decrementCartQty,
    TResult Function(CartModel cartModel, BuildContext context)? deleteProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_IncrementQty value) incrementQty,
    required TResult Function(_DecrementCartQty value) decrementCartQty,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_IncrementQty value)? incrementQty,
    TResult? Function(_DecrementCartQty value)? decrementCartQty,
    TResult? Function(_DeleteProduct value)? deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_IncrementQty value)? incrementQty,
    TResult Function(_DecrementCartQty value)? decrementCartQty,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartEventCopyWith<CartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_AddToCartCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$$_AddToCartCopyWith(
          _$_AddToCart value, $Res Function(_$_AddToCart) then) =
      __$$_AddToCartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartModel cartModel, BuildContext context});

  $CartModelCopyWith<$Res> get cartModel;
}

/// @nodoc
class __$$_AddToCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_AddToCart>
    implements _$$_AddToCartCopyWith<$Res> {
  __$$_AddToCartCopyWithImpl(
      _$_AddToCart _value, $Res Function(_$_AddToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = null,
    Object? context = null,
  }) {
    return _then(_$_AddToCart(
      cartModel: null == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res> get cartModel {
    return $CartModelCopyWith<$Res>(_value.cartModel, (value) {
      return _then(_value.copyWith(cartModel: value));
    });
  }
}

/// @nodoc

class _$_AddToCart implements _AddToCart {
  const _$_AddToCart({required this.cartModel, required this.context});

  @override
  final CartModel cartModel;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CartEvent.addToCart(cartModel: $cartModel, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToCart &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartModel, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToCartCopyWith<_$_AddToCart> get copyWith =>
      __$$_AddToCartCopyWithImpl<_$_AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel cartModel, BuildContext context)
        addToCart,
    required TResult Function(String userId, BuildContext context) getCart,
    required TResult Function(
            CartModel cartModel, String type, BuildContext context)
        incrementQty,
    required TResult Function(String userId, String id, int quantity,
            double price, String type, BuildContext context)
        decrementCartQty,
    required TResult Function(CartModel cartModel, BuildContext context)
        deleteProduct,
  }) {
    return addToCart(cartModel, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel cartModel, BuildContext context)? addToCart,
    TResult? Function(String userId, BuildContext context)? getCart,
    TResult? Function(CartModel cartModel, String type, BuildContext context)?
        incrementQty,
    TResult? Function(String userId, String id, int quantity, double price,
            String type, BuildContext context)?
        decrementCartQty,
    TResult? Function(CartModel cartModel, BuildContext context)? deleteProduct,
  }) {
    return addToCart?.call(cartModel, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel cartModel, BuildContext context)? addToCart,
    TResult Function(String userId, BuildContext context)? getCart,
    TResult Function(CartModel cartModel, String type, BuildContext context)?
        incrementQty,
    TResult Function(String userId, String id, int quantity, double price,
            String type, BuildContext context)?
        decrementCartQty,
    TResult Function(CartModel cartModel, BuildContext context)? deleteProduct,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(cartModel, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_IncrementQty value) incrementQty,
    required TResult Function(_DecrementCartQty value) decrementCartQty,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_IncrementQty value)? incrementQty,
    TResult? Function(_DecrementCartQty value)? decrementCartQty,
    TResult? Function(_DeleteProduct value)? deleteProduct,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_IncrementQty value)? incrementQty,
    TResult Function(_DecrementCartQty value)? decrementCartQty,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CartEvent {
  const factory _AddToCart(
      {required final CartModel cartModel,
      required final BuildContext context}) = _$_AddToCart;

  CartModel get cartModel;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_AddToCartCopyWith<_$_AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCartCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$$_GetCartCopyWith(
          _$_GetCart value, $Res Function(_$_GetCart) then) =
      __$$_GetCartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, BuildContext context});
}

/// @nodoc
class __$$_GetCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_GetCart>
    implements _$$_GetCartCopyWith<$Res> {
  __$$_GetCartCopyWithImpl(_$_GetCart _value, $Res Function(_$_GetCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? context = null,
  }) {
    return _then(_$_GetCart(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_GetCart implements _GetCart {
  const _$_GetCart({required this.userId, required this.context});

  @override
  final String userId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CartEvent.getCart(userId: $userId, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCart &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCartCopyWith<_$_GetCart> get copyWith =>
      __$$_GetCartCopyWithImpl<_$_GetCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel cartModel, BuildContext context)
        addToCart,
    required TResult Function(String userId, BuildContext context) getCart,
    required TResult Function(
            CartModel cartModel, String type, BuildContext context)
        incrementQty,
    required TResult Function(String userId, String id, int quantity,
            double price, String type, BuildContext context)
        decrementCartQty,
    required TResult Function(CartModel cartModel, BuildContext context)
        deleteProduct,
  }) {
    return getCart(userId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel cartModel, BuildContext context)? addToCart,
    TResult? Function(String userId, BuildContext context)? getCart,
    TResult? Function(CartModel cartModel, String type, BuildContext context)?
        incrementQty,
    TResult? Function(String userId, String id, int quantity, double price,
            String type, BuildContext context)?
        decrementCartQty,
    TResult? Function(CartModel cartModel, BuildContext context)? deleteProduct,
  }) {
    return getCart?.call(userId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel cartModel, BuildContext context)? addToCart,
    TResult Function(String userId, BuildContext context)? getCart,
    TResult Function(CartModel cartModel, String type, BuildContext context)?
        incrementQty,
    TResult Function(String userId, String id, int quantity, double price,
            String type, BuildContext context)?
        decrementCartQty,
    TResult Function(CartModel cartModel, BuildContext context)? deleteProduct,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(userId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_IncrementQty value) incrementQty,
    required TResult Function(_DecrementCartQty value) decrementCartQty,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return getCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_IncrementQty value)? incrementQty,
    TResult? Function(_DecrementCartQty value)? decrementCartQty,
    TResult? Function(_DeleteProduct value)? deleteProduct,
  }) {
    return getCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_IncrementQty value)? incrementQty,
    TResult Function(_DecrementCartQty value)? decrementCartQty,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(this);
    }
    return orElse();
  }
}

abstract class _GetCart implements CartEvent {
  const factory _GetCart(
      {required final String userId,
      required final BuildContext context}) = _$_GetCart;

  String get userId;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_GetCartCopyWith<_$_GetCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IncrementQtyCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$_IncrementQtyCopyWith(
          _$_IncrementQty value, $Res Function(_$_IncrementQty) then) =
      __$$_IncrementQtyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartModel cartModel, String type, BuildContext context});

  $CartModelCopyWith<$Res> get cartModel;
}

/// @nodoc
class __$$_IncrementQtyCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_IncrementQty>
    implements _$$_IncrementQtyCopyWith<$Res> {
  __$$_IncrementQtyCopyWithImpl(
      _$_IncrementQty _value, $Res Function(_$_IncrementQty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = null,
    Object? type = null,
    Object? context = null,
  }) {
    return _then(_$_IncrementQty(
      cartModel: null == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res> get cartModel {
    return $CartModelCopyWith<$Res>(_value.cartModel, (value) {
      return _then(_value.copyWith(cartModel: value));
    });
  }
}

/// @nodoc

class _$_IncrementQty implements _IncrementQty {
  const _$_IncrementQty(
      {required this.cartModel, required this.type, required this.context});

  @override
  final CartModel cartModel;
  @override
  final String type;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CartEvent.incrementQty(cartModel: $cartModel, type: $type, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncrementQty &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartModel, type, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IncrementQtyCopyWith<_$_IncrementQty> get copyWith =>
      __$$_IncrementQtyCopyWithImpl<_$_IncrementQty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel cartModel, BuildContext context)
        addToCart,
    required TResult Function(String userId, BuildContext context) getCart,
    required TResult Function(
            CartModel cartModel, String type, BuildContext context)
        incrementQty,
    required TResult Function(String userId, String id, int quantity,
            double price, String type, BuildContext context)
        decrementCartQty,
    required TResult Function(CartModel cartModel, BuildContext context)
        deleteProduct,
  }) {
    return incrementQty(cartModel, type, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel cartModel, BuildContext context)? addToCart,
    TResult? Function(String userId, BuildContext context)? getCart,
    TResult? Function(CartModel cartModel, String type, BuildContext context)?
        incrementQty,
    TResult? Function(String userId, String id, int quantity, double price,
            String type, BuildContext context)?
        decrementCartQty,
    TResult? Function(CartModel cartModel, BuildContext context)? deleteProduct,
  }) {
    return incrementQty?.call(cartModel, type, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel cartModel, BuildContext context)? addToCart,
    TResult Function(String userId, BuildContext context)? getCart,
    TResult Function(CartModel cartModel, String type, BuildContext context)?
        incrementQty,
    TResult Function(String userId, String id, int quantity, double price,
            String type, BuildContext context)?
        decrementCartQty,
    TResult Function(CartModel cartModel, BuildContext context)? deleteProduct,
    required TResult orElse(),
  }) {
    if (incrementQty != null) {
      return incrementQty(cartModel, type, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_IncrementQty value) incrementQty,
    required TResult Function(_DecrementCartQty value) decrementCartQty,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return incrementQty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_IncrementQty value)? incrementQty,
    TResult? Function(_DecrementCartQty value)? decrementCartQty,
    TResult? Function(_DeleteProduct value)? deleteProduct,
  }) {
    return incrementQty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_IncrementQty value)? incrementQty,
    TResult Function(_DecrementCartQty value)? decrementCartQty,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (incrementQty != null) {
      return incrementQty(this);
    }
    return orElse();
  }
}

abstract class _IncrementQty implements CartEvent {
  const factory _IncrementQty(
      {required final CartModel cartModel,
      required final String type,
      required final BuildContext context}) = _$_IncrementQty;

  CartModel get cartModel;
  String get type;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_IncrementQtyCopyWith<_$_IncrementQty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DecrementCartQtyCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$_DecrementCartQtyCopyWith(
          _$_DecrementCartQty value, $Res Function(_$_DecrementCartQty) then) =
      __$$_DecrementCartQtyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String id,
      int quantity,
      double price,
      String type,
      BuildContext context});
}

/// @nodoc
class __$$_DecrementCartQtyCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_DecrementCartQty>
    implements _$$_DecrementCartQtyCopyWith<$Res> {
  __$$_DecrementCartQtyCopyWithImpl(
      _$_DecrementCartQty _value, $Res Function(_$_DecrementCartQty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? quantity = null,
    Object? price = null,
    Object? type = null,
    Object? context = null,
  }) {
    return _then(_$_DecrementCartQty(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_DecrementCartQty implements _DecrementCartQty {
  const _$_DecrementCartQty(
      {required this.userId,
      required this.id,
      required this.quantity,
      required this.price,
      required this.type,
      required this.context});

  @override
  final String userId;
  @override
  final String id;
  @override
  final int quantity;
  @override
  final double price;
  @override
  final String type;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CartEvent.decrementCartQty(userId: $userId, id: $id, quantity: $quantity, price: $price, type: $type, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DecrementCartQty &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, id, quantity, price, type, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DecrementCartQtyCopyWith<_$_DecrementCartQty> get copyWith =>
      __$$_DecrementCartQtyCopyWithImpl<_$_DecrementCartQty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel cartModel, BuildContext context)
        addToCart,
    required TResult Function(String userId, BuildContext context) getCart,
    required TResult Function(
            CartModel cartModel, String type, BuildContext context)
        incrementQty,
    required TResult Function(String userId, String id, int quantity,
            double price, String type, BuildContext context)
        decrementCartQty,
    required TResult Function(CartModel cartModel, BuildContext context)
        deleteProduct,
  }) {
    return decrementCartQty(userId, id, quantity, price, type, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel cartModel, BuildContext context)? addToCart,
    TResult? Function(String userId, BuildContext context)? getCart,
    TResult? Function(CartModel cartModel, String type, BuildContext context)?
        incrementQty,
    TResult? Function(String userId, String id, int quantity, double price,
            String type, BuildContext context)?
        decrementCartQty,
    TResult? Function(CartModel cartModel, BuildContext context)? deleteProduct,
  }) {
    return decrementCartQty?.call(userId, id, quantity, price, type, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel cartModel, BuildContext context)? addToCart,
    TResult Function(String userId, BuildContext context)? getCart,
    TResult Function(CartModel cartModel, String type, BuildContext context)?
        incrementQty,
    TResult Function(String userId, String id, int quantity, double price,
            String type, BuildContext context)?
        decrementCartQty,
    TResult Function(CartModel cartModel, BuildContext context)? deleteProduct,
    required TResult orElse(),
  }) {
    if (decrementCartQty != null) {
      return decrementCartQty(userId, id, quantity, price, type, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_IncrementQty value) incrementQty,
    required TResult Function(_DecrementCartQty value) decrementCartQty,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return decrementCartQty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_IncrementQty value)? incrementQty,
    TResult? Function(_DecrementCartQty value)? decrementCartQty,
    TResult? Function(_DeleteProduct value)? deleteProduct,
  }) {
    return decrementCartQty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_IncrementQty value)? incrementQty,
    TResult Function(_DecrementCartQty value)? decrementCartQty,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (decrementCartQty != null) {
      return decrementCartQty(this);
    }
    return orElse();
  }
}

abstract class _DecrementCartQty implements CartEvent {
  const factory _DecrementCartQty(
      {required final String userId,
      required final String id,
      required final int quantity,
      required final double price,
      required final String type,
      required final BuildContext context}) = _$_DecrementCartQty;

  String get userId;
  String get id;
  int get quantity;
  double get price;
  String get type;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_DecrementCartQtyCopyWith<_$_DecrementCartQty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteProductCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$_DeleteProductCopyWith(
          _$_DeleteProduct value, $Res Function(_$_DeleteProduct) then) =
      __$$_DeleteProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartModel cartModel, BuildContext context});

  $CartModelCopyWith<$Res> get cartModel;
}

/// @nodoc
class __$$_DeleteProductCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_DeleteProduct>
    implements _$$_DeleteProductCopyWith<$Res> {
  __$$_DeleteProductCopyWithImpl(
      _$_DeleteProduct _value, $Res Function(_$_DeleteProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = null,
    Object? context = null,
  }) {
    return _then(_$_DeleteProduct(
      cartModel: null == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res> get cartModel {
    return $CartModelCopyWith<$Res>(_value.cartModel, (value) {
      return _then(_value.copyWith(cartModel: value));
    });
  }
}

/// @nodoc

class _$_DeleteProduct implements _DeleteProduct {
  const _$_DeleteProduct({required this.cartModel, required this.context});

  @override
  final CartModel cartModel;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CartEvent.deleteProduct(cartModel: $cartModel, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteProduct &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartModel, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteProductCopyWith<_$_DeleteProduct> get copyWith =>
      __$$_DeleteProductCopyWithImpl<_$_DeleteProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel cartModel, BuildContext context)
        addToCart,
    required TResult Function(String userId, BuildContext context) getCart,
    required TResult Function(
            CartModel cartModel, String type, BuildContext context)
        incrementQty,
    required TResult Function(String userId, String id, int quantity,
            double price, String type, BuildContext context)
        decrementCartQty,
    required TResult Function(CartModel cartModel, BuildContext context)
        deleteProduct,
  }) {
    return deleteProduct(cartModel, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel cartModel, BuildContext context)? addToCart,
    TResult? Function(String userId, BuildContext context)? getCart,
    TResult? Function(CartModel cartModel, String type, BuildContext context)?
        incrementQty,
    TResult? Function(String userId, String id, int quantity, double price,
            String type, BuildContext context)?
        decrementCartQty,
    TResult? Function(CartModel cartModel, BuildContext context)? deleteProduct,
  }) {
    return deleteProduct?.call(cartModel, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel cartModel, BuildContext context)? addToCart,
    TResult Function(String userId, BuildContext context)? getCart,
    TResult Function(CartModel cartModel, String type, BuildContext context)?
        incrementQty,
    TResult Function(String userId, String id, int quantity, double price,
            String type, BuildContext context)?
        decrementCartQty,
    TResult Function(CartModel cartModel, BuildContext context)? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(cartModel, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_IncrementQty value) incrementQty,
    required TResult Function(_DecrementCartQty value) decrementCartQty,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return deleteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_IncrementQty value)? incrementQty,
    TResult? Function(_DecrementCartQty value)? decrementCartQty,
    TResult? Function(_DeleteProduct value)? deleteProduct,
  }) {
    return deleteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_GetCart value)? getCart,
    TResult Function(_IncrementQty value)? incrementQty,
    TResult Function(_DecrementCartQty value)? decrementCartQty,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(this);
    }
    return orElse();
  }
}

abstract class _DeleteProduct implements CartEvent {
  const factory _DeleteProduct(
      {required final CartModel cartModel,
      required final BuildContext context}) = _$_DeleteProduct;

  CartModel get cartModel;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteProductCopyWith<_$_DeleteProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<CartModel> get cartList => throw _privateConstructorUsedError;
  CartModel get cart => throw _privateConstructorUsedError;
  bool get cartBool => throw _privateConstructorUsedError;
  Option<Either<MainFailure, CartModel>> get cartOpt =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<CartModel>>> get cartListOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<CartModel> cartList,
      CartModel cart,
      bool cartBool,
      Option<Either<MainFailure, CartModel>> cartOpt,
      Option<Either<MainFailure, List<CartModel>>> cartListOpt});

  $CartModelCopyWith<$Res> get cart;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? cartList = null,
    Object? cart = null,
    Object? cartBool = null,
    Object? cartOpt = null,
    Object? cartListOpt = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartList: null == cartList
          ? _value.cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartModel,
      cartBool: null == cartBool
          ? _value.cartBool
          : cartBool // ignore: cast_nullable_to_non_nullable
              as bool,
      cartOpt: null == cartOpt
          ? _value.cartOpt
          : cartOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, CartModel>>,
      cartListOpt: null == cartListOpt
          ? _value.cartListOpt
          : cartListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<CartModel>>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res> get cart {
    return $CartModelCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_CartStateCopyWith(
          _$_CartState value, $Res Function(_$_CartState) then) =
      __$$_CartStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<CartModel> cartList,
      CartModel cart,
      bool cartBool,
      Option<Either<MainFailure, CartModel>> cartOpt,
      Option<Either<MainFailure, List<CartModel>>> cartListOpt});

  @override
  $CartModelCopyWith<$Res> get cart;
}

/// @nodoc
class __$$_CartStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartState>
    implements _$$_CartStateCopyWith<$Res> {
  __$$_CartStateCopyWithImpl(
      _$_CartState _value, $Res Function(_$_CartState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? cartList = null,
    Object? cart = null,
    Object? cartBool = null,
    Object? cartOpt = null,
    Object? cartListOpt = null,
  }) {
    return _then(_$_CartState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cartList: null == cartList
          ? _value._cartList
          : cartList // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartModel,
      cartBool: null == cartBool
          ? _value.cartBool
          : cartBool // ignore: cast_nullable_to_non_nullable
              as bool,
      cartOpt: null == cartOpt
          ? _value.cartOpt
          : cartOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, CartModel>>,
      cartListOpt: null == cartListOpt
          ? _value.cartListOpt
          : cartListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<CartModel>>>,
    ));
  }
}

/// @nodoc

class _$_CartState implements _CartState {
  const _$_CartState(
      {required this.isLoading,
      required final List<CartModel> cartList,
      required this.cart,
      required this.cartBool,
      required this.cartOpt,
      required this.cartListOpt})
      : _cartList = cartList;

  @override
  final bool isLoading;
  final List<CartModel> _cartList;
  @override
  List<CartModel> get cartList {
    if (_cartList is EqualUnmodifiableListView) return _cartList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartList);
  }

  @override
  final CartModel cart;
  @override
  final bool cartBool;
  @override
  final Option<Either<MainFailure, CartModel>> cartOpt;
  @override
  final Option<Either<MainFailure, List<CartModel>>> cartListOpt;

  @override
  String toString() {
    return 'CartState(isLoading: $isLoading, cartList: $cartList, cart: $cart, cartBool: $cartBool, cartOpt: $cartOpt, cartListOpt: $cartListOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._cartList, _cartList) &&
            (identical(other.cart, cart) || other.cart == cart) &&
            (identical(other.cartBool, cartBool) ||
                other.cartBool == cartBool) &&
            (identical(other.cartOpt, cartOpt) || other.cartOpt == cartOpt) &&
            (identical(other.cartListOpt, cartListOpt) ||
                other.cartListOpt == cartListOpt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_cartList),
      cart,
      cartBool,
      cartOpt,
      cartListOpt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      __$$_CartStateCopyWithImpl<_$_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {required final bool isLoading,
      required final List<CartModel> cartList,
      required final CartModel cart,
      required final bool cartBool,
      required final Option<Either<MainFailure, CartModel>> cartOpt,
      required final Option<Either<MainFailure, List<CartModel>>>
          cartListOpt}) = _$_CartState;

  @override
  bool get isLoading;
  @override
  List<CartModel> get cartList;
  @override
  CartModel get cart;
  @override
  bool get cartBool;
  @override
  Option<Either<MainFailure, CartModel>> get cartOpt;
  @override
  Option<Either<MainFailure, List<CartModel>>> get cartListOpt;
  @override
  @JsonKey(ignore: true)
  _$$_CartStateCopyWith<_$_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

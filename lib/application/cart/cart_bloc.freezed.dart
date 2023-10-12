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
abstract class _$$AddToCartImplCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartModel cartModel, BuildContext context});

  $CartModelCopyWith<$Res> get cartModel;
}

/// @nodoc
class __$$AddToCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddToCartImpl>
    implements _$$AddToCartImplCopyWith<$Res> {
  __$$AddToCartImplCopyWithImpl(
      _$AddToCartImpl _value, $Res Function(_$AddToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = null,
    Object? context = null,
  }) {
    return _then(_$AddToCartImpl(
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

class _$AddToCartImpl implements _AddToCart {
  const _$AddToCartImpl({required this.cartModel, required this.context});

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
            other is _$AddToCartImpl &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartModel, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      __$$AddToCartImplCopyWithImpl<_$AddToCartImpl>(this, _$identity);

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
      required final BuildContext context}) = _$AddToCartImpl;

  CartModel get cartModel;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCartImplCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$GetCartImplCopyWith(
          _$GetCartImpl value, $Res Function(_$GetCartImpl) then) =
      __$$GetCartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, BuildContext context});
}

/// @nodoc
class __$$GetCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetCartImpl>
    implements _$$GetCartImplCopyWith<$Res> {
  __$$GetCartImplCopyWithImpl(
      _$GetCartImpl _value, $Res Function(_$GetCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? context = null,
  }) {
    return _then(_$GetCartImpl(
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

class _$GetCartImpl implements _GetCart {
  const _$GetCartImpl({required this.userId, required this.context});

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
            other is _$GetCartImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartImplCopyWith<_$GetCartImpl> get copyWith =>
      __$$GetCartImplCopyWithImpl<_$GetCartImpl>(this, _$identity);

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
      required final BuildContext context}) = _$GetCartImpl;

  String get userId;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$GetCartImplCopyWith<_$GetCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncrementQtyImplCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$IncrementQtyImplCopyWith(
          _$IncrementQtyImpl value, $Res Function(_$IncrementQtyImpl) then) =
      __$$IncrementQtyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartModel cartModel, String type, BuildContext context});

  $CartModelCopyWith<$Res> get cartModel;
}

/// @nodoc
class __$$IncrementQtyImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$IncrementQtyImpl>
    implements _$$IncrementQtyImplCopyWith<$Res> {
  __$$IncrementQtyImplCopyWithImpl(
      _$IncrementQtyImpl _value, $Res Function(_$IncrementQtyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = null,
    Object? type = null,
    Object? context = null,
  }) {
    return _then(_$IncrementQtyImpl(
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

class _$IncrementQtyImpl implements _IncrementQty {
  const _$IncrementQtyImpl(
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
            other is _$IncrementQtyImpl &&
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
  _$$IncrementQtyImplCopyWith<_$IncrementQtyImpl> get copyWith =>
      __$$IncrementQtyImplCopyWithImpl<_$IncrementQtyImpl>(this, _$identity);

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
      required final BuildContext context}) = _$IncrementQtyImpl;

  CartModel get cartModel;
  String get type;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$IncrementQtyImplCopyWith<_$IncrementQtyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecrementCartQtyImplCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$DecrementCartQtyImplCopyWith(_$DecrementCartQtyImpl value,
          $Res Function(_$DecrementCartQtyImpl) then) =
      __$$DecrementCartQtyImplCopyWithImpl<$Res>;
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
class __$$DecrementCartQtyImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DecrementCartQtyImpl>
    implements _$$DecrementCartQtyImplCopyWith<$Res> {
  __$$DecrementCartQtyImplCopyWithImpl(_$DecrementCartQtyImpl _value,
      $Res Function(_$DecrementCartQtyImpl) _then)
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
    return _then(_$DecrementCartQtyImpl(
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

class _$DecrementCartQtyImpl implements _DecrementCartQty {
  const _$DecrementCartQtyImpl(
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
            other is _$DecrementCartQtyImpl &&
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
  _$$DecrementCartQtyImplCopyWith<_$DecrementCartQtyImpl> get copyWith =>
      __$$DecrementCartQtyImplCopyWithImpl<_$DecrementCartQtyImpl>(
          this, _$identity);

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
      required final BuildContext context}) = _$DecrementCartQtyImpl;

  String get userId;
  String get id;
  int get quantity;
  double get price;
  String get type;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$DecrementCartQtyImplCopyWith<_$DecrementCartQtyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductImplCopyWith<$Res>
    implements $CartEventCopyWith<$Res> {
  factory _$$DeleteProductImplCopyWith(
          _$DeleteProductImpl value, $Res Function(_$DeleteProductImpl) then) =
      __$$DeleteProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartModel cartModel, BuildContext context});

  $CartModelCopyWith<$Res> get cartModel;
}

/// @nodoc
class __$$DeleteProductImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DeleteProductImpl>
    implements _$$DeleteProductImplCopyWith<$Res> {
  __$$DeleteProductImplCopyWithImpl(
      _$DeleteProductImpl _value, $Res Function(_$DeleteProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = null,
    Object? context = null,
  }) {
    return _then(_$DeleteProductImpl(
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

class _$DeleteProductImpl implements _DeleteProduct {
  const _$DeleteProductImpl({required this.cartModel, required this.context});

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
            other is _$DeleteProductImpl &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartModel, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductImplCopyWith<_$DeleteProductImpl> get copyWith =>
      __$$DeleteProductImplCopyWithImpl<_$DeleteProductImpl>(this, _$identity);

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
      required final BuildContext context}) = _$DeleteProductImpl;

  CartModel get cartModel;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$DeleteProductImplCopyWith<_$DeleteProductImpl> get copyWith =>
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
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
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
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
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
    return _then(_$CartStateImpl(
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

class _$CartStateImpl implements _CartState {
  const _$CartStateImpl(
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
            other is _$CartStateImpl &&
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
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {required final bool isLoading,
      required final List<CartModel> cartList,
      required final CartModel cart,
      required final bool cartBool,
      required final Option<Either<MainFailure, CartModel>> cartOpt,
      required final Option<Either<MainFailure, List<CartModel>>>
          cartListOpt}) = _$CartStateImpl;

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
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

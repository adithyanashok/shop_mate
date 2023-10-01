// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
mixin _$CartModel {
  String get userId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  double get totalDeliveryFee => throw _privateConstructorUsedError;
  double get totalDiscount => throw _privateConstructorUsedError;
  List<dynamic> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call(
      {String userId,
      String? id,
      double totalPrice,
      double totalDeliveryFee,
      double totalDiscount,
      List<dynamic> products});
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = freezed,
    Object? totalPrice = null,
    Object? totalDeliveryFee = null,
    Object? totalDiscount = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalDeliveryFee: null == totalDeliveryFee
          ? _value.totalDeliveryFee
          : totalDeliveryFee // ignore: cast_nullable_to_non_nullable
              as double,
      totalDiscount: null == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$$_CartModelCopyWith(
          _$_CartModel value, $Res Function(_$_CartModel) then) =
      __$$_CartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String? id,
      double totalPrice,
      double totalDeliveryFee,
      double totalDiscount,
      List<dynamic> products});
}

/// @nodoc
class __$$_CartModelCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$_CartModel>
    implements _$$_CartModelCopyWith<$Res> {
  __$$_CartModelCopyWithImpl(
      _$_CartModel _value, $Res Function(_$_CartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = freezed,
    Object? totalPrice = null,
    Object? totalDeliveryFee = null,
    Object? totalDiscount = null,
    Object? products = null,
  }) {
    return _then(_$_CartModel(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalDeliveryFee: null == totalDeliveryFee
          ? _value.totalDeliveryFee
          : totalDeliveryFee // ignore: cast_nullable_to_non_nullable
              as double,
      totalDiscount: null == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartModel implements _CartModel {
  const _$_CartModel(
      {required this.userId,
      this.id,
      required this.totalPrice,
      required this.totalDeliveryFee,
      required this.totalDiscount,
      required final List<dynamic> products})
      : _products = products;

  factory _$_CartModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartModelFromJson(json);

  @override
  final String userId;
  @override
  final String? id;
  @override
  final double totalPrice;
  @override
  final double totalDeliveryFee;
  @override
  final double totalDiscount;
  final List<dynamic> _products;
  @override
  List<dynamic> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CartModel(userId: $userId, id: $id, totalPrice: $totalPrice, totalDeliveryFee: $totalDeliveryFee, totalDiscount: $totalDiscount, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.totalDeliveryFee, totalDeliveryFee) ||
                other.totalDeliveryFee == totalDeliveryFee) &&
            (identical(other.totalDiscount, totalDiscount) ||
                other.totalDiscount == totalDiscount) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      id,
      totalPrice,
      totalDeliveryFee,
      totalDiscount,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      __$$_CartModelCopyWithImpl<_$_CartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartModelToJson(
      this,
    );
  }
}

abstract class _CartModel implements CartModel {
  const factory _CartModel(
      {required final String userId,
      final String? id,
      required final double totalPrice,
      required final double totalDeliveryFee,
      required final double totalDiscount,
      required final List<dynamic> products}) = _$_CartModel;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$_CartModel.fromJson;

  @override
  String get userId;
  @override
  String? get id;
  @override
  double get totalPrice;
  @override
  double get totalDeliveryFee;
  @override
  double get totalDiscount;
  @override
  List<dynamic> get products;
  @override
  @JsonKey(ignore: true)
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

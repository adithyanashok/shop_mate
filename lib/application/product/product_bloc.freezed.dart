// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AddProductCopyWith<$Res> {
  factory _$$_AddProductCopyWith(
          _$_AddProduct value, $Res Function(_$_AddProduct) then) =
      __$$_AddProductCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ProductModel product, List<Media> selectedImages, BuildContext context});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$_AddProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_AddProduct>
    implements _$$_AddProductCopyWith<$Res> {
  __$$_AddProductCopyWithImpl(
      _$_AddProduct _value, $Res Function(_$_AddProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? selectedImages = null,
    Object? context = null,
  }) {
    return _then(_$_AddProduct(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      selectedImages: null == selectedImages
          ? _value._selectedImages
          : selectedImages // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_AddProduct implements _AddProduct {
  const _$_AddProduct(
      {required this.product,
      required final List<Media> selectedImages,
      required this.context})
      : _selectedImages = selectedImages;

  @override
  final ProductModel product;
  final List<Media> _selectedImages;
  @override
  List<Media> get selectedImages {
    if (_selectedImages is EqualUnmodifiableListView) return _selectedImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedImages);
  }

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ProductEvent.addProduct(product: $product, selectedImages: $selectedImages, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddProduct &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality()
                .equals(other._selectedImages, _selectedImages) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product,
      const DeepCollectionEquality().hash(_selectedImages), context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddProductCopyWith<_$_AddProduct> get copyWith =>
      __$$_AddProductCopyWithImpl<_$_AddProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
  }) {
    return addProduct(product, selectedImages, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
  }) {
    return addProduct?.call(product, selectedImages, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(product, selectedImages, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class _AddProduct implements ProductEvent {
  const factory _AddProduct(
      {required final ProductModel product,
      required final List<Media> selectedImages,
      required final BuildContext context}) = _$_AddProduct;

  ProductModel get product;
  List<Media> get selectedImages;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_AddProductCopyWith<_$_AddProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAllProductCopyWith<$Res> {
  factory _$$_GetAllProductCopyWith(
          _$_GetAllProduct value, $Res Function(_$_GetAllProduct) then) =
      __$$_GetAllProductCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAllProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_GetAllProduct>
    implements _$$_GetAllProductCopyWith<$Res> {
  __$$_GetAllProductCopyWithImpl(
      _$_GetAllProduct _value, $Res Function(_$_GetAllProduct) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAllProduct implements _GetAllProduct {
  const _$_GetAllProduct();

  @override
  String toString() {
    return 'ProductEvent.getAllProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAllProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
  }) {
    return getAllProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
  }) {
    return getAllProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    required TResult orElse(),
  }) {
    if (getAllProduct != null) {
      return getAllProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
  }) {
    return getAllProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
  }) {
    return getAllProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    required TResult orElse(),
  }) {
    if (getAllProduct != null) {
      return getAllProduct(this);
    }
    return orElse();
  }
}

abstract class _GetAllProduct implements ProductEvent {
  const factory _GetAllProduct() = _$_GetAllProduct;
}

/// @nodoc
abstract class _$$_GetProductsByCategoryCopyWith<$Res> {
  factory _$$_GetProductsByCategoryCopyWith(_$_GetProductsByCategory value,
          $Res Function(_$_GetProductsByCategory) then) =
      __$$_GetProductsByCategoryCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, BuildContext context});
}

/// @nodoc
class __$$_GetProductsByCategoryCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_GetProductsByCategory>
    implements _$$_GetProductsByCategoryCopyWith<$Res> {
  __$$_GetProductsByCategoryCopyWithImpl(_$_GetProductsByCategory _value,
      $Res Function(_$_GetProductsByCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? context = null,
  }) {
    return _then(_$_GetProductsByCategory(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_GetProductsByCategory implements _GetProductsByCategory {
  const _$_GetProductsByCategory(
      {required this.category, required this.context});

  @override
  final String category;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ProductEvent.getProductsByCategory(category: $category, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProductsByCategory &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProductsByCategoryCopyWith<_$_GetProductsByCategory> get copyWith =>
      __$$_GetProductsByCategoryCopyWithImpl<_$_GetProductsByCategory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
  }) {
    return getProductsByCategory(category, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
  }) {
    return getProductsByCategory?.call(category, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    required TResult orElse(),
  }) {
    if (getProductsByCategory != null) {
      return getProductsByCategory(category, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
  }) {
    return getProductsByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
  }) {
    return getProductsByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    required TResult orElse(),
  }) {
    if (getProductsByCategory != null) {
      return getProductsByCategory(this);
    }
    return orElse();
  }
}

abstract class _GetProductsByCategory implements ProductEvent {
  const factory _GetProductsByCategory(
      {required final String category,
      required final BuildContext context}) = _$_GetProductsByCategory;

  String get category;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_GetProductsByCategoryCopyWith<_$_GetProductsByCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetLaptopsCopyWith<$Res> {
  factory _$$_GetLaptopsCopyWith(
          _$_GetLaptops value, $Res Function(_$_GetLaptops) then) =
      __$$_GetLaptopsCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, BuildContext context});
}

/// @nodoc
class __$$_GetLaptopsCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_GetLaptops>
    implements _$$_GetLaptopsCopyWith<$Res> {
  __$$_GetLaptopsCopyWithImpl(
      _$_GetLaptops _value, $Res Function(_$_GetLaptops) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? context = null,
  }) {
    return _then(_$_GetLaptops(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_GetLaptops implements _GetLaptops {
  const _$_GetLaptops({required this.category, required this.context});

  @override
  final String category;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ProductEvent.getLaptops(category: $category, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetLaptops &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetLaptopsCopyWith<_$_GetLaptops> get copyWith =>
      __$$_GetLaptopsCopyWithImpl<_$_GetLaptops>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
  }) {
    return getLaptops(category, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
  }) {
    return getLaptops?.call(category, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    required TResult orElse(),
  }) {
    if (getLaptops != null) {
      return getLaptops(category, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
  }) {
    return getLaptops(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
  }) {
    return getLaptops?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    required TResult orElse(),
  }) {
    if (getLaptops != null) {
      return getLaptops(this);
    }
    return orElse();
  }
}

abstract class _GetLaptops implements ProductEvent {
  const factory _GetLaptops(
      {required final String category,
      required final BuildContext context}) = _$_GetLaptops;

  String get category;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_GetLaptopsCopyWith<_$_GetLaptops> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetEarphonesCopyWith<$Res> {
  factory _$$_GetEarphonesCopyWith(
          _$_GetEarphones value, $Res Function(_$_GetEarphones) then) =
      __$$_GetEarphonesCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, BuildContext context});
}

/// @nodoc
class __$$_GetEarphonesCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_GetEarphones>
    implements _$$_GetEarphonesCopyWith<$Res> {
  __$$_GetEarphonesCopyWithImpl(
      _$_GetEarphones _value, $Res Function(_$_GetEarphones) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? context = null,
  }) {
    return _then(_$_GetEarphones(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_GetEarphones implements _GetEarphones {
  const _$_GetEarphones({required this.category, required this.context});

  @override
  final String category;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ProductEvent.getEarphones(category: $category, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetEarphones &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetEarphonesCopyWith<_$_GetEarphones> get copyWith =>
      __$$_GetEarphonesCopyWithImpl<_$_GetEarphones>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
  }) {
    return getEarphones(category, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
  }) {
    return getEarphones?.call(category, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    required TResult orElse(),
  }) {
    if (getEarphones != null) {
      return getEarphones(category, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
  }) {
    return getEarphones(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
  }) {
    return getEarphones?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    required TResult orElse(),
  }) {
    if (getEarphones != null) {
      return getEarphones(this);
    }
    return orElse();
  }
}

abstract class _GetEarphones implements ProductEvent {
  const factory _GetEarphones(
      {required final String category,
      required final BuildContext context}) = _$_GetEarphones;

  String get category;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_GetEarphonesCopyWith<_$_GetEarphones> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetMobilesCopyWith<$Res> {
  factory _$$_GetMobilesCopyWith(
          _$_GetMobiles value, $Res Function(_$_GetMobiles) then) =
      __$$_GetMobilesCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, BuildContext context});
}

/// @nodoc
class __$$_GetMobilesCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_GetMobiles>
    implements _$$_GetMobilesCopyWith<$Res> {
  __$$_GetMobilesCopyWithImpl(
      _$_GetMobiles _value, $Res Function(_$_GetMobiles) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? context = null,
  }) {
    return _then(_$_GetMobiles(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_GetMobiles implements _GetMobiles {
  const _$_GetMobiles({required this.category, required this.context});

  @override
  final String category;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ProductEvent.getMobiles(category: $category, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMobiles &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMobilesCopyWith<_$_GetMobiles> get copyWith =>
      __$$_GetMobilesCopyWithImpl<_$_GetMobiles>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
  }) {
    return getMobiles(category, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
  }) {
    return getMobiles?.call(category, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    required TResult orElse(),
  }) {
    if (getMobiles != null) {
      return getMobiles(category, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
  }) {
    return getMobiles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
  }) {
    return getMobiles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    required TResult orElse(),
  }) {
    if (getMobiles != null) {
      return getMobiles(this);
    }
    return orElse();
  }
}

abstract class _GetMobiles implements ProductEvent {
  const factory _GetMobiles(
      {required final String category,
      required final BuildContext context}) = _$_GetMobiles;

  String get category;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_GetMobilesCopyWith<_$_GetMobiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetProductCopyWith<$Res> {
  factory _$$_GetProductCopyWith(
          _$_GetProduct value, $Res Function(_$_GetProduct) then) =
      __$$_GetProductCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId, BuildContext context});
}

/// @nodoc
class __$$_GetProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_GetProduct>
    implements _$$_GetProductCopyWith<$Res> {
  __$$_GetProductCopyWithImpl(
      _$_GetProduct _value, $Res Function(_$_GetProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? context = null,
  }) {
    return _then(_$_GetProduct(
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

class _$_GetProduct implements _GetProduct {
  const _$_GetProduct({required this.productId, required this.context});

  @override
  final String productId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ProductEvent.getProduct(productId: $productId, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProduct &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProductCopyWith<_$_GetProduct> get copyWith =>
      __$$_GetProductCopyWithImpl<_$_GetProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
  }) {
    return getProduct(productId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
  }) {
    return getProduct?.call(productId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(productId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
  }) {
    return getProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
  }) {
    return getProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(this);
    }
    return orElse();
  }
}

abstract class _GetProduct implements ProductEvent {
  const factory _GetProduct(
      {required final String productId,
      required final BuildContext context}) = _$_GetProduct;

  String get productId;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_GetProductCopyWith<_$_GetProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  ProductModel get product => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<MainFailure, ProductModel>> get productOpt =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<ProductModel>>>? get productList =>
      throw _privateConstructorUsedError;
  List<ProductModel> get laptopListOpt => throw _privateConstructorUsedError;
  List<ProductModel> get earphoneListOpt => throw _privateConstructorUsedError;
  List<ProductModel> get mobileListOpt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {ProductModel product,
      List<ProductModel> products,
      bool isLoading,
      Option<Either<MainFailure, ProductModel>> productOpt,
      Option<Either<MainFailure, List<ProductModel>>>? productList,
      List<ProductModel> laptopListOpt,
      List<ProductModel> earphoneListOpt,
      List<ProductModel> mobileListOpt});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? products = null,
    Object? isLoading = null,
    Object? productOpt = null,
    Object? productList = freezed,
    Object? laptopListOpt = null,
    Object? earphoneListOpt = null,
    Object? mobileListOpt = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      productOpt: null == productOpt
          ? _value.productOpt
          : productOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, ProductModel>>,
      productList: freezed == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<ProductModel>>>?,
      laptopListOpt: null == laptopListOpt
          ? _value.laptopListOpt
          : laptopListOpt // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      earphoneListOpt: null == earphoneListOpt
          ? _value.earphoneListOpt
          : earphoneListOpt // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      mobileListOpt: null == mobileListOpt
          ? _value.mobileListOpt
          : mobileListOpt // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$_ProductStateCopyWith(
          _$_ProductState value, $Res Function(_$_ProductState) then) =
      __$$_ProductStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductModel product,
      List<ProductModel> products,
      bool isLoading,
      Option<Either<MainFailure, ProductModel>> productOpt,
      Option<Either<MainFailure, List<ProductModel>>>? productList,
      List<ProductModel> laptopListOpt,
      List<ProductModel> earphoneListOpt,
      List<ProductModel> mobileListOpt});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$_ProductStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_ProductState>
    implements _$$_ProductStateCopyWith<$Res> {
  __$$_ProductStateCopyWithImpl(
      _$_ProductState _value, $Res Function(_$_ProductState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? products = null,
    Object? isLoading = null,
    Object? productOpt = null,
    Object? productList = freezed,
    Object? laptopListOpt = null,
    Object? earphoneListOpt = null,
    Object? mobileListOpt = null,
  }) {
    return _then(_$_ProductState(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      productOpt: null == productOpt
          ? _value.productOpt
          : productOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, ProductModel>>,
      productList: freezed == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<ProductModel>>>?,
      laptopListOpt: null == laptopListOpt
          ? _value._laptopListOpt
          : laptopListOpt // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      earphoneListOpt: null == earphoneListOpt
          ? _value._earphoneListOpt
          : earphoneListOpt // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      mobileListOpt: null == mobileListOpt
          ? _value._mobileListOpt
          : mobileListOpt // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_ProductState implements _ProductState {
  const _$_ProductState(
      {required this.product,
      final List<ProductModel> products = const [],
      required this.isLoading,
      required this.productOpt,
      this.productList,
      final List<ProductModel> laptopListOpt = const [],
      final List<ProductModel> earphoneListOpt = const [],
      final List<ProductModel> mobileListOpt = const []})
      : _products = products,
        _laptopListOpt = laptopListOpt,
        _earphoneListOpt = earphoneListOpt,
        _mobileListOpt = mobileListOpt;

  @override
  final ProductModel product;
  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final bool isLoading;
  @override
  final Option<Either<MainFailure, ProductModel>> productOpt;
  @override
  final Option<Either<MainFailure, List<ProductModel>>>? productList;
  final List<ProductModel> _laptopListOpt;
  @override
  @JsonKey()
  List<ProductModel> get laptopListOpt {
    if (_laptopListOpt is EqualUnmodifiableListView) return _laptopListOpt;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_laptopListOpt);
  }

  final List<ProductModel> _earphoneListOpt;
  @override
  @JsonKey()
  List<ProductModel> get earphoneListOpt {
    if (_earphoneListOpt is EqualUnmodifiableListView) return _earphoneListOpt;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_earphoneListOpt);
  }

  final List<ProductModel> _mobileListOpt;
  @override
  @JsonKey()
  List<ProductModel> get mobileListOpt {
    if (_mobileListOpt is EqualUnmodifiableListView) return _mobileListOpt;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mobileListOpt);
  }

  @override
  String toString() {
    return 'ProductState(product: $product, products: $products, isLoading: $isLoading, productOpt: $productOpt, productList: $productList, laptopListOpt: $laptopListOpt, earphoneListOpt: $earphoneListOpt, mobileListOpt: $mobileListOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductState &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.productOpt, productOpt) ||
                other.productOpt == productOpt) &&
            (identical(other.productList, productList) ||
                other.productList == productList) &&
            const DeepCollectionEquality()
                .equals(other._laptopListOpt, _laptopListOpt) &&
            const DeepCollectionEquality()
                .equals(other._earphoneListOpt, _earphoneListOpt) &&
            const DeepCollectionEquality()
                .equals(other._mobileListOpt, _mobileListOpt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      product,
      const DeepCollectionEquality().hash(_products),
      isLoading,
      productOpt,
      productList,
      const DeepCollectionEquality().hash(_laptopListOpt),
      const DeepCollectionEquality().hash(_earphoneListOpt),
      const DeepCollectionEquality().hash(_mobileListOpt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      __$$_ProductStateCopyWithImpl<_$_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {required final ProductModel product,
      final List<ProductModel> products,
      required final bool isLoading,
      required final Option<Either<MainFailure, ProductModel>> productOpt,
      final Option<Either<MainFailure, List<ProductModel>>>? productList,
      final List<ProductModel> laptopListOpt,
      final List<ProductModel> earphoneListOpt,
      final List<ProductModel> mobileListOpt}) = _$_ProductState;

  @override
  ProductModel get product;
  @override
  List<ProductModel> get products;
  @override
  bool get isLoading;
  @override
  Option<Either<MainFailure, ProductModel>> get productOpt;
  @override
  Option<Either<MainFailure, List<ProductModel>>>? get productList;
  @override
  List<ProductModel> get laptopListOpt;
  @override
  List<ProductModel> get earphoneListOpt;
  @override
  List<ProductModel> get mobileListOpt;
  @override
  @JsonKey(ignore: true)
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

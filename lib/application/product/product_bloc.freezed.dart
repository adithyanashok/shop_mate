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
    required TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)
        editProduct,
    required TResult Function(String productId, BuildContext context)
        deleteProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
    required TResult Function(String query) searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult? Function(String productId, BuildContext context)? deleteProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
    TResult? Function(String query)? searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult Function(String productId, BuildContext context)? deleteProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    TResult Function(String query)? searchProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_SearchProduct value) searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_SearchProduct value)? searchProduct,
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
abstract class _$$AddProductImplCopyWith<$Res> {
  factory _$$AddProductImplCopyWith(
          _$AddProductImpl value, $Res Function(_$AddProductImpl) then) =
      __$$AddProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ProductModel product, List<Media> selectedImages, BuildContext context});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$AddProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$AddProductImpl>
    implements _$$AddProductImplCopyWith<$Res> {
  __$$AddProductImplCopyWithImpl(
      _$AddProductImpl _value, $Res Function(_$AddProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? selectedImages = null,
    Object? context = null,
  }) {
    return _then(_$AddProductImpl(
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

class _$AddProductImpl implements _AddProduct {
  const _$AddProductImpl(
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
            other is _$AddProductImpl &&
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
  _$$AddProductImplCopyWith<_$AddProductImpl> get copyWith =>
      __$$AddProductImplCopyWithImpl<_$AddProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)
        editProduct,
    required TResult Function(String productId, BuildContext context)
        deleteProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
    required TResult Function(String query) searchProduct,
  }) {
    return addProduct(product, selectedImages, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult? Function(String productId, BuildContext context)? deleteProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
    TResult? Function(String query)? searchProduct,
  }) {
    return addProduct?.call(product, selectedImages, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult Function(String productId, BuildContext context)? deleteProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    TResult Function(String query)? searchProduct,
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
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_SearchProduct value)? searchProduct,
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
      required final BuildContext context}) = _$AddProductImpl;

  ProductModel get product;
  List<Media> get selectedImages;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$AddProductImplCopyWith<_$AddProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProductImplCopyWith<$Res> {
  factory _$$EditProductImplCopyWith(
          _$EditProductImpl value, $Res Function(_$EditProductImpl) then) =
      __$$EditProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ProductModel product,
      BuildContext context,
      List<Media>? selectedImages});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$EditProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$EditProductImpl>
    implements _$$EditProductImplCopyWith<$Res> {
  __$$EditProductImplCopyWithImpl(
      _$EditProductImpl _value, $Res Function(_$EditProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? context = null,
    Object? selectedImages = freezed,
  }) {
    return _then(_$EditProductImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      selectedImages: freezed == selectedImages
          ? _value._selectedImages
          : selectedImages // ignore: cast_nullable_to_non_nullable
              as List<Media>?,
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

class _$EditProductImpl implements _EditProduct {
  const _$EditProductImpl(
      {required this.product,
      required this.context,
      final List<Media>? selectedImages})
      : _selectedImages = selectedImages;

  @override
  final ProductModel product;
  @override
  final BuildContext context;
  final List<Media>? _selectedImages;
  @override
  List<Media>? get selectedImages {
    final value = _selectedImages;
    if (value == null) return null;
    if (_selectedImages is EqualUnmodifiableListView) return _selectedImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductEvent.editProduct(product: $product, context: $context, selectedImages: $selectedImages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProductImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.context, context) || other.context == context) &&
            const DeepCollectionEquality()
                .equals(other._selectedImages, _selectedImages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, context,
      const DeepCollectionEquality().hash(_selectedImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProductImplCopyWith<_$EditProductImpl> get copyWith =>
      __$$EditProductImplCopyWithImpl<_$EditProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)
        editProduct,
    required TResult Function(String productId, BuildContext context)
        deleteProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
    required TResult Function(String query) searchProduct,
  }) {
    return editProduct(product, context, selectedImages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult? Function(String productId, BuildContext context)? deleteProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
    TResult? Function(String query)? searchProduct,
  }) {
    return editProduct?.call(product, context, selectedImages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult Function(String productId, BuildContext context)? deleteProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    TResult Function(String query)? searchProduct,
    required TResult orElse(),
  }) {
    if (editProduct != null) {
      return editProduct(product, context, selectedImages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return editProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return editProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) {
    if (editProduct != null) {
      return editProduct(this);
    }
    return orElse();
  }
}

abstract class _EditProduct implements ProductEvent {
  const factory _EditProduct(
      {required final ProductModel product,
      required final BuildContext context,
      final List<Media>? selectedImages}) = _$EditProductImpl;

  ProductModel get product;
  BuildContext get context;
  List<Media>? get selectedImages;
  @JsonKey(ignore: true)
  _$$EditProductImplCopyWith<_$EditProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductImplCopyWith<$Res> {
  factory _$$DeleteProductImplCopyWith(
          _$DeleteProductImpl value, $Res Function(_$DeleteProductImpl) then) =
      __$$DeleteProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId, BuildContext context});
}

/// @nodoc
class __$$DeleteProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$DeleteProductImpl>
    implements _$$DeleteProductImplCopyWith<$Res> {
  __$$DeleteProductImplCopyWithImpl(
      _$DeleteProductImpl _value, $Res Function(_$DeleteProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? context = null,
  }) {
    return _then(_$DeleteProductImpl(
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

class _$DeleteProductImpl implements _DeleteProduct {
  const _$DeleteProductImpl({required this.productId, required this.context});

  @override
  final String productId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ProductEvent.deleteProduct(productId: $productId, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductImplCopyWith<_$DeleteProductImpl> get copyWith =>
      __$$DeleteProductImplCopyWithImpl<_$DeleteProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)
        editProduct,
    required TResult Function(String productId, BuildContext context)
        deleteProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
    required TResult Function(String query) searchProduct,
  }) {
    return deleteProduct(productId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult? Function(String productId, BuildContext context)? deleteProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
    TResult? Function(String query)? searchProduct,
  }) {
    return deleteProduct?.call(productId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult Function(String productId, BuildContext context)? deleteProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    TResult Function(String query)? searchProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(productId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return deleteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return deleteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(this);
    }
    return orElse();
  }
}

abstract class _DeleteProduct implements ProductEvent {
  const factory _DeleteProduct(
      {required final String productId,
      required final BuildContext context}) = _$DeleteProductImpl;

  String get productId;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$DeleteProductImplCopyWith<_$DeleteProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllProductImplCopyWith<$Res> {
  factory _$$GetAllProductImplCopyWith(
          _$GetAllProductImpl value, $Res Function(_$GetAllProductImpl) then) =
      __$$GetAllProductImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetAllProductImpl>
    implements _$$GetAllProductImplCopyWith<$Res> {
  __$$GetAllProductImplCopyWithImpl(
      _$GetAllProductImpl _value, $Res Function(_$GetAllProductImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllProductImpl implements _GetAllProduct {
  const _$GetAllProductImpl();

  @override
  String toString() {
    return 'ProductEvent.getAllProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllProductImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)
        editProduct,
    required TResult Function(String productId, BuildContext context)
        deleteProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
    required TResult Function(String query) searchProduct,
  }) {
    return getAllProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult? Function(String productId, BuildContext context)? deleteProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
    TResult? Function(String query)? searchProduct,
  }) {
    return getAllProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult Function(String productId, BuildContext context)? deleteProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    TResult Function(String query)? searchProduct,
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
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return getAllProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return getAllProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) {
    if (getAllProduct != null) {
      return getAllProduct(this);
    }
    return orElse();
  }
}

abstract class _GetAllProduct implements ProductEvent {
  const factory _GetAllProduct() = _$GetAllProductImpl;
}

/// @nodoc
abstract class _$$GetProductsByCategoryImplCopyWith<$Res> {
  factory _$$GetProductsByCategoryImplCopyWith(
          _$GetProductsByCategoryImpl value,
          $Res Function(_$GetProductsByCategoryImpl) then) =
      __$$GetProductsByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, BuildContext context});
}

/// @nodoc
class __$$GetProductsByCategoryImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetProductsByCategoryImpl>
    implements _$$GetProductsByCategoryImplCopyWith<$Res> {
  __$$GetProductsByCategoryImplCopyWithImpl(_$GetProductsByCategoryImpl _value,
      $Res Function(_$GetProductsByCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? context = null,
  }) {
    return _then(_$GetProductsByCategoryImpl(
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

class _$GetProductsByCategoryImpl implements _GetProductsByCategory {
  const _$GetProductsByCategoryImpl(
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
            other is _$GetProductsByCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsByCategoryImplCopyWith<_$GetProductsByCategoryImpl>
      get copyWith => __$$GetProductsByCategoryImplCopyWithImpl<
          _$GetProductsByCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)
        editProduct,
    required TResult Function(String productId, BuildContext context)
        deleteProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
    required TResult Function(String query) searchProduct,
  }) {
    return getProductsByCategory(category, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult? Function(String productId, BuildContext context)? deleteProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
    TResult? Function(String query)? searchProduct,
  }) {
    return getProductsByCategory?.call(category, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult Function(String productId, BuildContext context)? deleteProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    TResult Function(String query)? searchProduct,
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
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return getProductsByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return getProductsByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_SearchProduct value)? searchProduct,
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
      required final BuildContext context}) = _$GetProductsByCategoryImpl;

  String get category;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$GetProductsByCategoryImplCopyWith<_$GetProductsByCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLaptopsImplCopyWith<$Res> {
  factory _$$GetLaptopsImplCopyWith(
          _$GetLaptopsImpl value, $Res Function(_$GetLaptopsImpl) then) =
      __$$GetLaptopsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, BuildContext context});
}

/// @nodoc
class __$$GetLaptopsImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetLaptopsImpl>
    implements _$$GetLaptopsImplCopyWith<$Res> {
  __$$GetLaptopsImplCopyWithImpl(
      _$GetLaptopsImpl _value, $Res Function(_$GetLaptopsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? context = null,
  }) {
    return _then(_$GetLaptopsImpl(
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

class _$GetLaptopsImpl implements _GetLaptops {
  const _$GetLaptopsImpl({required this.category, required this.context});

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
            other is _$GetLaptopsImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLaptopsImplCopyWith<_$GetLaptopsImpl> get copyWith =>
      __$$GetLaptopsImplCopyWithImpl<_$GetLaptopsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)
        editProduct,
    required TResult Function(String productId, BuildContext context)
        deleteProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
    required TResult Function(String query) searchProduct,
  }) {
    return getLaptops(category, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult? Function(String productId, BuildContext context)? deleteProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
    TResult? Function(String query)? searchProduct,
  }) {
    return getLaptops?.call(category, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult Function(String productId, BuildContext context)? deleteProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    TResult Function(String query)? searchProduct,
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
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return getLaptops(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return getLaptops?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_SearchProduct value)? searchProduct,
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
      required final BuildContext context}) = _$GetLaptopsImpl;

  String get category;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$GetLaptopsImplCopyWith<_$GetLaptopsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetEarphonesImplCopyWith<$Res> {
  factory _$$GetEarphonesImplCopyWith(
          _$GetEarphonesImpl value, $Res Function(_$GetEarphonesImpl) then) =
      __$$GetEarphonesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, BuildContext context});
}

/// @nodoc
class __$$GetEarphonesImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetEarphonesImpl>
    implements _$$GetEarphonesImplCopyWith<$Res> {
  __$$GetEarphonesImplCopyWithImpl(
      _$GetEarphonesImpl _value, $Res Function(_$GetEarphonesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? context = null,
  }) {
    return _then(_$GetEarphonesImpl(
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

class _$GetEarphonesImpl implements _GetEarphones {
  const _$GetEarphonesImpl({required this.category, required this.context});

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
            other is _$GetEarphonesImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEarphonesImplCopyWith<_$GetEarphonesImpl> get copyWith =>
      __$$GetEarphonesImplCopyWithImpl<_$GetEarphonesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)
        editProduct,
    required TResult Function(String productId, BuildContext context)
        deleteProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
    required TResult Function(String query) searchProduct,
  }) {
    return getEarphones(category, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult? Function(String productId, BuildContext context)? deleteProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
    TResult? Function(String query)? searchProduct,
  }) {
    return getEarphones?.call(category, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult Function(String productId, BuildContext context)? deleteProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    TResult Function(String query)? searchProduct,
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
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return getEarphones(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return getEarphones?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_SearchProduct value)? searchProduct,
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
      required final BuildContext context}) = _$GetEarphonesImpl;

  String get category;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$GetEarphonesImplCopyWith<_$GetEarphonesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMobilesImplCopyWith<$Res> {
  factory _$$GetMobilesImplCopyWith(
          _$GetMobilesImpl value, $Res Function(_$GetMobilesImpl) then) =
      __$$GetMobilesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, BuildContext context});
}

/// @nodoc
class __$$GetMobilesImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetMobilesImpl>
    implements _$$GetMobilesImplCopyWith<$Res> {
  __$$GetMobilesImplCopyWithImpl(
      _$GetMobilesImpl _value, $Res Function(_$GetMobilesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? context = null,
  }) {
    return _then(_$GetMobilesImpl(
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

class _$GetMobilesImpl implements _GetMobiles {
  const _$GetMobilesImpl({required this.category, required this.context});

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
            other is _$GetMobilesImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMobilesImplCopyWith<_$GetMobilesImpl> get copyWith =>
      __$$GetMobilesImplCopyWithImpl<_$GetMobilesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)
        editProduct,
    required TResult Function(String productId, BuildContext context)
        deleteProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
    required TResult Function(String query) searchProduct,
  }) {
    return getMobiles(category, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult? Function(String productId, BuildContext context)? deleteProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
    TResult? Function(String query)? searchProduct,
  }) {
    return getMobiles?.call(category, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult Function(String productId, BuildContext context)? deleteProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    TResult Function(String query)? searchProduct,
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
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return getMobiles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return getMobiles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_SearchProduct value)? searchProduct,
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
      required final BuildContext context}) = _$GetMobilesImpl;

  String get category;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$GetMobilesImplCopyWith<_$GetMobilesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductImplCopyWith<$Res> {
  factory _$$GetProductImplCopyWith(
          _$GetProductImpl value, $Res Function(_$GetProductImpl) then) =
      __$$GetProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId, BuildContext context});
}

/// @nodoc
class __$$GetProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetProductImpl>
    implements _$$GetProductImplCopyWith<$Res> {
  __$$GetProductImplCopyWithImpl(
      _$GetProductImpl _value, $Res Function(_$GetProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? context = null,
  }) {
    return _then(_$GetProductImpl(
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

class _$GetProductImpl implements _GetProduct {
  const _$GetProductImpl({required this.productId, required this.context});

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
            other is _$GetProductImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductImplCopyWith<_$GetProductImpl> get copyWith =>
      __$$GetProductImplCopyWithImpl<_$GetProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)
        editProduct,
    required TResult Function(String productId, BuildContext context)
        deleteProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
    required TResult Function(String query) searchProduct,
  }) {
    return getProduct(productId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult? Function(String productId, BuildContext context)? deleteProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
    TResult? Function(String query)? searchProduct,
  }) {
    return getProduct?.call(productId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult Function(String productId, BuildContext context)? deleteProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    TResult Function(String query)? searchProduct,
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
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return getProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return getProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_SearchProduct value)? searchProduct,
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
      required final BuildContext context}) = _$GetProductImpl;

  String get productId;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$GetProductImplCopyWith<_$GetProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchProductImplCopyWith<$Res> {
  factory _$$SearchProductImplCopyWith(
          _$SearchProductImpl value, $Res Function(_$SearchProductImpl) then) =
      __$$SearchProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$SearchProductImpl>
    implements _$$SearchProductImplCopyWith<$Res> {
  __$$SearchProductImplCopyWithImpl(
      _$SearchProductImpl _value, $Res Function(_$SearchProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchProductImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductImpl implements _SearchProduct {
  const _$SearchProductImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'ProductEvent.searchProduct(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductImplCopyWith<_$SearchProductImpl> get copyWith =>
      __$$SearchProductImplCopyWithImpl<_$SearchProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)
        addProduct,
    required TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)
        editProduct,
    required TResult Function(String productId, BuildContext context)
        deleteProduct,
    required TResult Function() getAllProduct,
    required TResult Function(String category, BuildContext context)
        getProductsByCategory,
    required TResult Function(String category, BuildContext context) getLaptops,
    required TResult Function(String category, BuildContext context)
        getEarphones,
    required TResult Function(String category, BuildContext context) getMobiles,
    required TResult Function(String productId, BuildContext context)
        getProduct,
    required TResult Function(String query) searchProduct,
  }) {
    return searchProduct(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult? Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult? Function(String productId, BuildContext context)? deleteProduct,
    TResult? Function()? getAllProduct,
    TResult? Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult? Function(String category, BuildContext context)? getLaptops,
    TResult? Function(String category, BuildContext context)? getEarphones,
    TResult? Function(String category, BuildContext context)? getMobiles,
    TResult? Function(String productId, BuildContext context)? getProduct,
    TResult? Function(String query)? searchProduct,
  }) {
    return searchProduct?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductModel product, List<Media> selectedImages,
            BuildContext context)?
        addProduct,
    TResult Function(ProductModel product, BuildContext context,
            List<Media>? selectedImages)?
        editProduct,
    TResult Function(String productId, BuildContext context)? deleteProduct,
    TResult Function()? getAllProduct,
    TResult Function(String category, BuildContext context)?
        getProductsByCategory,
    TResult Function(String category, BuildContext context)? getLaptops,
    TResult Function(String category, BuildContext context)? getEarphones,
    TResult Function(String category, BuildContext context)? getMobiles,
    TResult Function(String productId, BuildContext context)? getProduct,
    TResult Function(String query)? searchProduct,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_EditProduct value) editProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_GetAllProduct value) getAllProduct,
    required TResult Function(_GetProductsByCategory value)
        getProductsByCategory,
    required TResult Function(_GetLaptops value) getLaptops,
    required TResult Function(_GetEarphones value) getEarphones,
    required TResult Function(_GetMobiles value) getMobiles,
    required TResult Function(_GetProduct value) getProduct,
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return searchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProduct value)? addProduct,
    TResult? Function(_EditProduct value)? editProduct,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_GetAllProduct value)? getAllProduct,
    TResult? Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult? Function(_GetLaptops value)? getLaptops,
    TResult? Function(_GetEarphones value)? getEarphones,
    TResult? Function(_GetMobiles value)? getMobiles,
    TResult? Function(_GetProduct value)? getProduct,
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return searchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_EditProduct value)? editProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_GetAllProduct value)? getAllProduct,
    TResult Function(_GetProductsByCategory value)? getProductsByCategory,
    TResult Function(_GetLaptops value)? getLaptops,
    TResult Function(_GetEarphones value)? getEarphones,
    TResult Function(_GetMobiles value)? getMobiles,
    TResult Function(_GetProduct value)? getProduct,
    TResult Function(_SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(this);
    }
    return orElse();
  }
}

abstract class _SearchProduct implements ProductEvent {
  const factory _SearchProduct({required final String query}) =
      _$SearchProductImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchProductImplCopyWith<_$SearchProductImpl> get copyWith =>
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
abstract class _$$ProductStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$ProductStateImplCopyWith(
          _$ProductStateImpl value, $Res Function(_$ProductStateImpl) then) =
      __$$ProductStateImplCopyWithImpl<$Res>;
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
class __$$ProductStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateImpl>
    implements _$$ProductStateImplCopyWith<$Res> {
  __$$ProductStateImplCopyWithImpl(
      _$ProductStateImpl _value, $Res Function(_$ProductStateImpl) _then)
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
    return _then(_$ProductStateImpl(
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

class _$ProductStateImpl implements _ProductState {
  const _$ProductStateImpl(
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
            other is _$ProductStateImpl &&
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
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      __$$ProductStateImplCopyWithImpl<_$ProductStateImpl>(this, _$identity);
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
      final List<ProductModel> mobileListOpt}) = _$ProductStateImpl;

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
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

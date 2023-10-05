// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel addressModel, BuildContext context)
        addAddress,
    required TResult Function(String userId, BuildContext context) getAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel addressModel, BuildContext context)?
        addAddress,
    TResult? Function(String userId, BuildContext context)? getAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel addressModel, BuildContext context)?
        addAddress,
    TResult Function(String userId, BuildContext context)? getAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_GetAddress value) getAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_GetAddress value)? getAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_GetAddress value)? getAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressEventCopyWith<AddressEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEventCopyWith<$Res> {
  factory $AddressEventCopyWith(
          AddressEvent value, $Res Function(AddressEvent) then) =
      _$AddressEventCopyWithImpl<$Res, AddressEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$AddressEventCopyWithImpl<$Res, $Val extends AddressEvent>
    implements $AddressEventCopyWith<$Res> {
  _$AddressEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_AddAddressCopyWith<$Res>
    implements $AddressEventCopyWith<$Res> {
  factory _$$_AddAddressCopyWith(
          _$_AddAddress value, $Res Function(_$_AddAddress) then) =
      __$$_AddAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressModel addressModel, BuildContext context});

  $AddressModelCopyWith<$Res> get addressModel;
}

/// @nodoc
class __$$_AddAddressCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$_AddAddress>
    implements _$$_AddAddressCopyWith<$Res> {
  __$$_AddAddressCopyWithImpl(
      _$_AddAddress _value, $Res Function(_$_AddAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressModel = null,
    Object? context = null,
  }) {
    return _then(_$_AddAddress(
      addressModel: null == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res> get addressModel {
    return $AddressModelCopyWith<$Res>(_value.addressModel, (value) {
      return _then(_value.copyWith(addressModel: value));
    });
  }
}

/// @nodoc

class _$_AddAddress implements _AddAddress {
  const _$_AddAddress({required this.addressModel, required this.context});

  @override
  final AddressModel addressModel;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AddressEvent.addAddress(addressModel: $addressModel, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddAddress &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressModel, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddAddressCopyWith<_$_AddAddress> get copyWith =>
      __$$_AddAddressCopyWithImpl<_$_AddAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel addressModel, BuildContext context)
        addAddress,
    required TResult Function(String userId, BuildContext context) getAddress,
  }) {
    return addAddress(addressModel, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel addressModel, BuildContext context)?
        addAddress,
    TResult? Function(String userId, BuildContext context)? getAddress,
  }) {
    return addAddress?.call(addressModel, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel addressModel, BuildContext context)?
        addAddress,
    TResult Function(String userId, BuildContext context)? getAddress,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(addressModel, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_GetAddress value) getAddress,
  }) {
    return addAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_GetAddress value)? getAddress,
  }) {
    return addAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_GetAddress value)? getAddress,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(this);
    }
    return orElse();
  }
}

abstract class _AddAddress implements AddressEvent {
  const factory _AddAddress(
      {required final AddressModel addressModel,
      required final BuildContext context}) = _$_AddAddress;

  AddressModel get addressModel;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_AddAddressCopyWith<_$_AddAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetAddressCopyWith<$Res>
    implements $AddressEventCopyWith<$Res> {
  factory _$$_GetAddressCopyWith(
          _$_GetAddress value, $Res Function(_$_GetAddress) then) =
      __$$_GetAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, BuildContext context});
}

/// @nodoc
class __$$_GetAddressCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$_GetAddress>
    implements _$$_GetAddressCopyWith<$Res> {
  __$$_GetAddressCopyWithImpl(
      _$_GetAddress _value, $Res Function(_$_GetAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? context = null,
  }) {
    return _then(_$_GetAddress(
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

class _$_GetAddress implements _GetAddress {
  const _$_GetAddress({required this.userId, required this.context});

  @override
  final String userId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AddressEvent.getAddress(userId: $userId, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetAddress &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetAddressCopyWith<_$_GetAddress> get copyWith =>
      __$$_GetAddressCopyWithImpl<_$_GetAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel addressModel, BuildContext context)
        addAddress,
    required TResult Function(String userId, BuildContext context) getAddress,
  }) {
    return getAddress(userId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel addressModel, BuildContext context)?
        addAddress,
    TResult? Function(String userId, BuildContext context)? getAddress,
  }) {
    return getAddress?.call(userId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel addressModel, BuildContext context)?
        addAddress,
    TResult Function(String userId, BuildContext context)? getAddress,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress(userId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_GetAddress value) getAddress,
  }) {
    return getAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_GetAddress value)? getAddress,
  }) {
    return getAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_GetAddress value)? getAddress,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress(this);
    }
    return orElse();
  }
}

abstract class _GetAddress implements AddressEvent {
  const factory _GetAddress(
      {required final String userId,
      required final BuildContext context}) = _$_GetAddress;

  String get userId;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_GetAddressCopyWith<_$_GetAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddressState {
  bool get isLoading => throw _privateConstructorUsedError;
  AddressModel get addressModel => throw _privateConstructorUsedError;
  List<AddressModel> get addressModelList => throw _privateConstructorUsedError;
  Option<Either<MainFailure, AddressModel>> get addressOpt =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<AddressModel>>> get addressOptList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressStateCopyWith<AddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res, AddressState>;
  @useResult
  $Res call(
      {bool isLoading,
      AddressModel addressModel,
      List<AddressModel> addressModelList,
      Option<Either<MainFailure, AddressModel>> addressOpt,
      Option<Either<MainFailure, List<AddressModel>>> addressOptList});

  $AddressModelCopyWith<$Res> get addressModel;
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res, $Val extends AddressState>
    implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? addressModel = null,
    Object? addressModelList = null,
    Object? addressOpt = null,
    Object? addressOptList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addressModel: null == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      addressModelList: null == addressModelList
          ? _value.addressModelList
          : addressModelList // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
      addressOpt: null == addressOpt
          ? _value.addressOpt
          : addressOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, AddressModel>>,
      addressOptList: null == addressOptList
          ? _value.addressOptList
          : addressOptList // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<AddressModel>>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res> get addressModel {
    return $AddressModelCopyWith<$Res>(_value.addressModel, (value) {
      return _then(_value.copyWith(addressModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddressStateCopyWith<$Res>
    implements $AddressStateCopyWith<$Res> {
  factory _$$_AddressStateCopyWith(
          _$_AddressState value, $Res Function(_$_AddressState) then) =
      __$$_AddressStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      AddressModel addressModel,
      List<AddressModel> addressModelList,
      Option<Either<MainFailure, AddressModel>> addressOpt,
      Option<Either<MainFailure, List<AddressModel>>> addressOptList});

  @override
  $AddressModelCopyWith<$Res> get addressModel;
}

/// @nodoc
class __$$_AddressStateCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$_AddressState>
    implements _$$_AddressStateCopyWith<$Res> {
  __$$_AddressStateCopyWithImpl(
      _$_AddressState _value, $Res Function(_$_AddressState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? addressModel = null,
    Object? addressModelList = null,
    Object? addressOpt = null,
    Object? addressOptList = null,
  }) {
    return _then(_$_AddressState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addressModel: null == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      addressModelList: null == addressModelList
          ? _value._addressModelList
          : addressModelList // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
      addressOpt: null == addressOpt
          ? _value.addressOpt
          : addressOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, AddressModel>>,
      addressOptList: null == addressOptList
          ? _value.addressOptList
          : addressOptList // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<AddressModel>>>,
    ));
  }
}

/// @nodoc

class _$_AddressState implements _AddressState {
  const _$_AddressState(
      {required this.isLoading,
      required this.addressModel,
      required final List<AddressModel> addressModelList,
      required this.addressOpt,
      required this.addressOptList})
      : _addressModelList = addressModelList;

  @override
  final bool isLoading;
  @override
  final AddressModel addressModel;
  final List<AddressModel> _addressModelList;
  @override
  List<AddressModel> get addressModelList {
    if (_addressModelList is EqualUnmodifiableListView)
      return _addressModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressModelList);
  }

  @override
  final Option<Either<MainFailure, AddressModel>> addressOpt;
  @override
  final Option<Either<MainFailure, List<AddressModel>>> addressOptList;

  @override
  String toString() {
    return 'AddressState(isLoading: $isLoading, addressModel: $addressModel, addressModelList: $addressModelList, addressOpt: $addressOpt, addressOptList: $addressOptList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel) &&
            const DeepCollectionEquality()
                .equals(other._addressModelList, _addressModelList) &&
            (identical(other.addressOpt, addressOpt) ||
                other.addressOpt == addressOpt) &&
            (identical(other.addressOptList, addressOptList) ||
                other.addressOptList == addressOptList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      addressModel,
      const DeepCollectionEquality().hash(_addressModelList),
      addressOpt,
      addressOptList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressStateCopyWith<_$_AddressState> get copyWith =>
      __$$_AddressStateCopyWithImpl<_$_AddressState>(this, _$identity);
}

abstract class _AddressState implements AddressState {
  const factory _AddressState(
      {required final bool isLoading,
      required final AddressModel addressModel,
      required final List<AddressModel> addressModelList,
      required final Option<Either<MainFailure, AddressModel>> addressOpt,
      required final Option<Either<MainFailure, List<AddressModel>>>
          addressOptList}) = _$_AddressState;

  @override
  bool get isLoading;
  @override
  AddressModel get addressModel;
  @override
  List<AddressModel> get addressModelList;
  @override
  Option<Either<MainFailure, AddressModel>> get addressOpt;
  @override
  Option<Either<MainFailure, List<AddressModel>>> get addressOptList;
  @override
  @JsonKey(ignore: true)
  _$$_AddressStateCopyWith<_$_AddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

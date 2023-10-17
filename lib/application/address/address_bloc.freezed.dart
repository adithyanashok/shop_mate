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
    required TResult Function(AddressModel addressModel, BuildContext context)
        updateAddress,
    required TResult Function(String id, String userId, BuildContext context)
        deleteAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel addressModel, BuildContext context)?
        addAddress,
    TResult? Function(String userId, BuildContext context)? getAddress,
    TResult? Function(AddressModel addressModel, BuildContext context)?
        updateAddress,
    TResult? Function(String id, String userId, BuildContext context)?
        deleteAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel addressModel, BuildContext context)?
        addAddress,
    TResult Function(String userId, BuildContext context)? getAddress,
    TResult Function(AddressModel addressModel, BuildContext context)?
        updateAddress,
    TResult Function(String id, String userId, BuildContext context)?
        deleteAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_DeleteAddress value) deleteAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_DeleteAddress value)? deleteAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
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
abstract class _$$AddAddressImplCopyWith<$Res>
    implements $AddressEventCopyWith<$Res> {
  factory _$$AddAddressImplCopyWith(
          _$AddAddressImpl value, $Res Function(_$AddAddressImpl) then) =
      __$$AddAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressModel addressModel, BuildContext context});

  $AddressModelCopyWith<$Res> get addressModel;
}

/// @nodoc
class __$$AddAddressImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$AddAddressImpl>
    implements _$$AddAddressImplCopyWith<$Res> {
  __$$AddAddressImplCopyWithImpl(
      _$AddAddressImpl _value, $Res Function(_$AddAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressModel = null,
    Object? context = null,
  }) {
    return _then(_$AddAddressImpl(
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

class _$AddAddressImpl implements _AddAddress {
  const _$AddAddressImpl({required this.addressModel, required this.context});

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
            other is _$AddAddressImpl &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressModel, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAddressImplCopyWith<_$AddAddressImpl> get copyWith =>
      __$$AddAddressImplCopyWithImpl<_$AddAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel addressModel, BuildContext context)
        addAddress,
    required TResult Function(String userId, BuildContext context) getAddress,
    required TResult Function(AddressModel addressModel, BuildContext context)
        updateAddress,
    required TResult Function(String id, String userId, BuildContext context)
        deleteAddress,
  }) {
    return addAddress(addressModel, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel addressModel, BuildContext context)?
        addAddress,
    TResult? Function(String userId, BuildContext context)? getAddress,
    TResult? Function(AddressModel addressModel, BuildContext context)?
        updateAddress,
    TResult? Function(String id, String userId, BuildContext context)?
        deleteAddress,
  }) {
    return addAddress?.call(addressModel, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel addressModel, BuildContext context)?
        addAddress,
    TResult Function(String userId, BuildContext context)? getAddress,
    TResult Function(AddressModel addressModel, BuildContext context)?
        updateAddress,
    TResult Function(String id, String userId, BuildContext context)?
        deleteAddress,
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
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_DeleteAddress value) deleteAddress,
  }) {
    return addAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_DeleteAddress value)? deleteAddress,
  }) {
    return addAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
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
      required final BuildContext context}) = _$AddAddressImpl;

  AddressModel get addressModel;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$AddAddressImplCopyWith<_$AddAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAddressImplCopyWith<$Res>
    implements $AddressEventCopyWith<$Res> {
  factory _$$GetAddressImplCopyWith(
          _$GetAddressImpl value, $Res Function(_$GetAddressImpl) then) =
      __$$GetAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, BuildContext context});
}

/// @nodoc
class __$$GetAddressImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$GetAddressImpl>
    implements _$$GetAddressImplCopyWith<$Res> {
  __$$GetAddressImplCopyWithImpl(
      _$GetAddressImpl _value, $Res Function(_$GetAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? context = null,
  }) {
    return _then(_$GetAddressImpl(
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

class _$GetAddressImpl implements _GetAddress {
  const _$GetAddressImpl({required this.userId, required this.context});

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
            other is _$GetAddressImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAddressImplCopyWith<_$GetAddressImpl> get copyWith =>
      __$$GetAddressImplCopyWithImpl<_$GetAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel addressModel, BuildContext context)
        addAddress,
    required TResult Function(String userId, BuildContext context) getAddress,
    required TResult Function(AddressModel addressModel, BuildContext context)
        updateAddress,
    required TResult Function(String id, String userId, BuildContext context)
        deleteAddress,
  }) {
    return getAddress(userId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel addressModel, BuildContext context)?
        addAddress,
    TResult? Function(String userId, BuildContext context)? getAddress,
    TResult? Function(AddressModel addressModel, BuildContext context)?
        updateAddress,
    TResult? Function(String id, String userId, BuildContext context)?
        deleteAddress,
  }) {
    return getAddress?.call(userId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel addressModel, BuildContext context)?
        addAddress,
    TResult Function(String userId, BuildContext context)? getAddress,
    TResult Function(AddressModel addressModel, BuildContext context)?
        updateAddress,
    TResult Function(String id, String userId, BuildContext context)?
        deleteAddress,
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
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_DeleteAddress value) deleteAddress,
  }) {
    return getAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_DeleteAddress value)? deleteAddress,
  }) {
    return getAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
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
      required final BuildContext context}) = _$GetAddressImpl;

  String get userId;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$GetAddressImplCopyWith<_$GetAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAddressImplCopyWith<$Res>
    implements $AddressEventCopyWith<$Res> {
  factory _$$UpdateAddressImplCopyWith(
          _$UpdateAddressImpl value, $Res Function(_$UpdateAddressImpl) then) =
      __$$UpdateAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressModel addressModel, BuildContext context});

  $AddressModelCopyWith<$Res> get addressModel;
}

/// @nodoc
class __$$UpdateAddressImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$UpdateAddressImpl>
    implements _$$UpdateAddressImplCopyWith<$Res> {
  __$$UpdateAddressImplCopyWithImpl(
      _$UpdateAddressImpl _value, $Res Function(_$UpdateAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressModel = null,
    Object? context = null,
  }) {
    return _then(_$UpdateAddressImpl(
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

class _$UpdateAddressImpl implements _UpdateAddress {
  const _$UpdateAddressImpl(
      {required this.addressModel, required this.context});

  @override
  final AddressModel addressModel;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AddressEvent.updateAddress(addressModel: $addressModel, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAddressImpl &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressModel, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAddressImplCopyWith<_$UpdateAddressImpl> get copyWith =>
      __$$UpdateAddressImplCopyWithImpl<_$UpdateAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel addressModel, BuildContext context)
        addAddress,
    required TResult Function(String userId, BuildContext context) getAddress,
    required TResult Function(AddressModel addressModel, BuildContext context)
        updateAddress,
    required TResult Function(String id, String userId, BuildContext context)
        deleteAddress,
  }) {
    return updateAddress(addressModel, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel addressModel, BuildContext context)?
        addAddress,
    TResult? Function(String userId, BuildContext context)? getAddress,
    TResult? Function(AddressModel addressModel, BuildContext context)?
        updateAddress,
    TResult? Function(String id, String userId, BuildContext context)?
        deleteAddress,
  }) {
    return updateAddress?.call(addressModel, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel addressModel, BuildContext context)?
        addAddress,
    TResult Function(String userId, BuildContext context)? getAddress,
    TResult Function(AddressModel addressModel, BuildContext context)?
        updateAddress,
    TResult Function(String id, String userId, BuildContext context)?
        deleteAddress,
    required TResult orElse(),
  }) {
    if (updateAddress != null) {
      return updateAddress(addressModel, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_DeleteAddress value) deleteAddress,
  }) {
    return updateAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_DeleteAddress value)? deleteAddress,
  }) {
    return updateAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
    required TResult orElse(),
  }) {
    if (updateAddress != null) {
      return updateAddress(this);
    }
    return orElse();
  }
}

abstract class _UpdateAddress implements AddressEvent {
  const factory _UpdateAddress(
      {required final AddressModel addressModel,
      required final BuildContext context}) = _$UpdateAddressImpl;

  AddressModel get addressModel;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$UpdateAddressImplCopyWith<_$UpdateAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAddressImplCopyWith<$Res>
    implements $AddressEventCopyWith<$Res> {
  factory _$$DeleteAddressImplCopyWith(
          _$DeleteAddressImpl value, $Res Function(_$DeleteAddressImpl) then) =
      __$$DeleteAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String userId, BuildContext context});
}

/// @nodoc
class __$$DeleteAddressImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$DeleteAddressImpl>
    implements _$$DeleteAddressImplCopyWith<$Res> {
  __$$DeleteAddressImplCopyWithImpl(
      _$DeleteAddressImpl _value, $Res Function(_$DeleteAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? context = null,
  }) {
    return _then(_$DeleteAddressImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$DeleteAddressImpl implements _DeleteAddress {
  const _$DeleteAddressImpl(
      {required this.id, required this.userId, required this.context});

  @override
  final String id;
  @override
  final String userId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AddressEvent.deleteAddress(id: $id, userId: $userId, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAddressImplCopyWith<_$DeleteAddressImpl> get copyWith =>
      __$$DeleteAddressImplCopyWithImpl<_$DeleteAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel addressModel, BuildContext context)
        addAddress,
    required TResult Function(String userId, BuildContext context) getAddress,
    required TResult Function(AddressModel addressModel, BuildContext context)
        updateAddress,
    required TResult Function(String id, String userId, BuildContext context)
        deleteAddress,
  }) {
    return deleteAddress(id, userId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel addressModel, BuildContext context)?
        addAddress,
    TResult? Function(String userId, BuildContext context)? getAddress,
    TResult? Function(AddressModel addressModel, BuildContext context)?
        updateAddress,
    TResult? Function(String id, String userId, BuildContext context)?
        deleteAddress,
  }) {
    return deleteAddress?.call(id, userId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel addressModel, BuildContext context)?
        addAddress,
    TResult Function(String userId, BuildContext context)? getAddress,
    TResult Function(AddressModel addressModel, BuildContext context)?
        updateAddress,
    TResult Function(String id, String userId, BuildContext context)?
        deleteAddress,
    required TResult orElse(),
  }) {
    if (deleteAddress != null) {
      return deleteAddress(id, userId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_DeleteAddress value) deleteAddress,
  }) {
    return deleteAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_DeleteAddress value)? deleteAddress,
  }) {
    return deleteAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_DeleteAddress value)? deleteAddress,
    required TResult orElse(),
  }) {
    if (deleteAddress != null) {
      return deleteAddress(this);
    }
    return orElse();
  }
}

abstract class _DeleteAddress implements AddressEvent {
  const factory _DeleteAddress(
      {required final String id,
      required final String userId,
      required final BuildContext context}) = _$DeleteAddressImpl;

  String get id;
  String get userId;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$DeleteAddressImplCopyWith<_$DeleteAddressImpl> get copyWith =>
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
abstract class _$$AddressStateImplCopyWith<$Res>
    implements $AddressStateCopyWith<$Res> {
  factory _$$AddressStateImplCopyWith(
          _$AddressStateImpl value, $Res Function(_$AddressStateImpl) then) =
      __$$AddressStateImplCopyWithImpl<$Res>;
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
class __$$AddressStateImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$AddressStateImpl>
    implements _$$AddressStateImplCopyWith<$Res> {
  __$$AddressStateImplCopyWithImpl(
      _$AddressStateImpl _value, $Res Function(_$AddressStateImpl) _then)
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
    return _then(_$AddressStateImpl(
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

class _$AddressStateImpl implements _AddressState {
  const _$AddressStateImpl(
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
            other is _$AddressStateImpl &&
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
  _$$AddressStateImplCopyWith<_$AddressStateImpl> get copyWith =>
      __$$AddressStateImplCopyWithImpl<_$AddressStateImpl>(this, _$identity);
}

abstract class _AddressState implements AddressState {
  const factory _AddressState(
      {required final bool isLoading,
      required final AddressModel addressModel,
      required final List<AddressModel> addressModelList,
      required final Option<Either<MainFailure, AddressModel>> addressOpt,
      required final Option<Either<MainFailure, List<AddressModel>>>
          addressOptList}) = _$AddressStateImpl;

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
  _$$AddressStateImplCopyWith<_$AddressStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

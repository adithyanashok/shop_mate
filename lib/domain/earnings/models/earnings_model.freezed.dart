// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EarningsModel _$EarningsModelFromJson(Map<String, dynamic> json) {
  return _EarningsModel.fromJson(json);
}

/// @nodoc
mixin _$EarningsModel {
  double get earnings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EarningsModelCopyWith<EarningsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsModelCopyWith<$Res> {
  factory $EarningsModelCopyWith(
          EarningsModel value, $Res Function(EarningsModel) then) =
      _$EarningsModelCopyWithImpl<$Res, EarningsModel>;
  @useResult
  $Res call({double earnings});
}

/// @nodoc
class _$EarningsModelCopyWithImpl<$Res, $Val extends EarningsModel>
    implements $EarningsModelCopyWith<$Res> {
  _$EarningsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earnings = null,
  }) {
    return _then(_value.copyWith(
      earnings: null == earnings
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EarningsModelCopyWith<$Res>
    implements $EarningsModelCopyWith<$Res> {
  factory _$$_EarningsModelCopyWith(
          _$_EarningsModel value, $Res Function(_$_EarningsModel) then) =
      __$$_EarningsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double earnings});
}

/// @nodoc
class __$$_EarningsModelCopyWithImpl<$Res>
    extends _$EarningsModelCopyWithImpl<$Res, _$_EarningsModel>
    implements _$$_EarningsModelCopyWith<$Res> {
  __$$_EarningsModelCopyWithImpl(
      _$_EarningsModel _value, $Res Function(_$_EarningsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? earnings = null,
  }) {
    return _then(_$_EarningsModel(
      earnings: null == earnings
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EarningsModel implements _EarningsModel {
  const _$_EarningsModel({required this.earnings});

  factory _$_EarningsModel.fromJson(Map<String, dynamic> json) =>
      _$$_EarningsModelFromJson(json);

  @override
  final double earnings;

  @override
  String toString() {
    return 'EarningsModel(earnings: $earnings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EarningsModel &&
            (identical(other.earnings, earnings) ||
                other.earnings == earnings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, earnings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EarningsModelCopyWith<_$_EarningsModel> get copyWith =>
      __$$_EarningsModelCopyWithImpl<_$_EarningsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EarningsModelToJson(
      this,
    );
  }
}

abstract class _EarningsModel implements EarningsModel {
  const factory _EarningsModel({required final double earnings}) =
      _$_EarningsModel;

  factory _EarningsModel.fromJson(Map<String, dynamic> json) =
      _$_EarningsModel.fromJson;

  @override
  double get earnings;
  @override
  @JsonKey(ignore: true)
  _$$_EarningsModelCopyWith<_$_EarningsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

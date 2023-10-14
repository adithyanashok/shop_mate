// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel transactionModel)
        createTransaction,
    required TResult Function() fetchTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionModel transactionModel)? createTransaction,
    TResult? Function()? fetchTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel transactionModel)? createTransaction,
    TResult Function()? fetchTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTransaction value) createTransaction,
    required TResult Function(_FetchTransactions value) fetchTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTransaction value)? createTransaction,
    TResult? Function(_FetchTransactions value)? fetchTransactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTransaction value)? createTransaction,
    TResult Function(_FetchTransactions value)? fetchTransactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateTransactionImplCopyWith<$Res> {
  factory _$$CreateTransactionImplCopyWith(_$CreateTransactionImpl value,
          $Res Function(_$CreateTransactionImpl) then) =
      __$$CreateTransactionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionModel transactionModel});

  $TransactionModelCopyWith<$Res> get transactionModel;
}

/// @nodoc
class __$$CreateTransactionImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$CreateTransactionImpl>
    implements _$$CreateTransactionImplCopyWith<$Res> {
  __$$CreateTransactionImplCopyWithImpl(_$CreateTransactionImpl _value,
      $Res Function(_$CreateTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionModel = null,
  }) {
    return _then(_$CreateTransactionImpl(
      null == transactionModel
          ? _value.transactionModel
          : transactionModel // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionModelCopyWith<$Res> get transactionModel {
    return $TransactionModelCopyWith<$Res>(_value.transactionModel, (value) {
      return _then(_value.copyWith(transactionModel: value));
    });
  }
}

/// @nodoc

class _$CreateTransactionImpl implements _CreateTransaction {
  const _$CreateTransactionImpl(this.transactionModel);

  @override
  final TransactionModel transactionModel;

  @override
  String toString() {
    return 'TransactionEvent.createTransaction(transactionModel: $transactionModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTransactionImpl &&
            (identical(other.transactionModel, transactionModel) ||
                other.transactionModel == transactionModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTransactionImplCopyWith<_$CreateTransactionImpl> get copyWith =>
      __$$CreateTransactionImplCopyWithImpl<_$CreateTransactionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel transactionModel)
        createTransaction,
    required TResult Function() fetchTransactions,
  }) {
    return createTransaction(transactionModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionModel transactionModel)? createTransaction,
    TResult? Function()? fetchTransactions,
  }) {
    return createTransaction?.call(transactionModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel transactionModel)? createTransaction,
    TResult Function()? fetchTransactions,
    required TResult orElse(),
  }) {
    if (createTransaction != null) {
      return createTransaction(transactionModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTransaction value) createTransaction,
    required TResult Function(_FetchTransactions value) fetchTransactions,
  }) {
    return createTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTransaction value)? createTransaction,
    TResult? Function(_FetchTransactions value)? fetchTransactions,
  }) {
    return createTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTransaction value)? createTransaction,
    TResult Function(_FetchTransactions value)? fetchTransactions,
    required TResult orElse(),
  }) {
    if (createTransaction != null) {
      return createTransaction(this);
    }
    return orElse();
  }
}

abstract class _CreateTransaction implements TransactionEvent {
  const factory _CreateTransaction(final TransactionModel transactionModel) =
      _$CreateTransactionImpl;

  TransactionModel get transactionModel;
  @JsonKey(ignore: true)
  _$$CreateTransactionImplCopyWith<_$CreateTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchTransactionsImplCopyWith<$Res> {
  factory _$$FetchTransactionsImplCopyWith(_$FetchTransactionsImpl value,
          $Res Function(_$FetchTransactionsImpl) then) =
      __$$FetchTransactionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTransactionsImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$FetchTransactionsImpl>
    implements _$$FetchTransactionsImplCopyWith<$Res> {
  __$$FetchTransactionsImplCopyWithImpl(_$FetchTransactionsImpl _value,
      $Res Function(_$FetchTransactionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchTransactionsImpl implements _FetchTransactions {
  const _$FetchTransactionsImpl();

  @override
  String toString() {
    return 'TransactionEvent.fetchTransactions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTransactionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TransactionModel transactionModel)
        createTransaction,
    required TResult Function() fetchTransactions,
  }) {
    return fetchTransactions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TransactionModel transactionModel)? createTransaction,
    TResult? Function()? fetchTransactions,
  }) {
    return fetchTransactions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TransactionModel transactionModel)? createTransaction,
    TResult Function()? fetchTransactions,
    required TResult orElse(),
  }) {
    if (fetchTransactions != null) {
      return fetchTransactions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateTransaction value) createTransaction,
    required TResult Function(_FetchTransactions value) fetchTransactions,
  }) {
    return fetchTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateTransaction value)? createTransaction,
    TResult? Function(_FetchTransactions value)? fetchTransactions,
  }) {
    return fetchTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateTransaction value)? createTransaction,
    TResult Function(_FetchTransactions value)? fetchTransactions,
    required TResult orElse(),
  }) {
    if (fetchTransactions != null) {
      return fetchTransactions(this);
    }
    return orElse();
  }
}

abstract class _FetchTransactions implements TransactionEvent {
  const factory _FetchTransactions() = _$FetchTransactionsImpl;
}

/// @nodoc
mixin _$TransactionState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<TransactionModel> get transactionList =>
      throw _privateConstructorUsedError;
  TransactionModel get transactionModel => throw _privateConstructorUsedError;
  Option<Either<MainFailure, TransactionModel>> get transactionOpt =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<TransactionModel>>> get transactionListOpt =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionStateCopyWith<TransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<TransactionModel> transactionList,
      TransactionModel transactionModel,
      Option<Either<MainFailure, TransactionModel>> transactionOpt,
      Option<Either<MainFailure, List<TransactionModel>>> transactionListOpt});

  $TransactionModelCopyWith<$Res> get transactionModel;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? transactionList = null,
    Object? transactionModel = null,
    Object? transactionOpt = null,
    Object? transactionListOpt = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionList: null == transactionList
          ? _value.transactionList
          : transactionList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      transactionModel: null == transactionModel
          ? _value.transactionModel
          : transactionModel // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
      transactionOpt: null == transactionOpt
          ? _value.transactionOpt
          : transactionOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, TransactionModel>>,
      transactionListOpt: null == transactionListOpt
          ? _value.transactionListOpt
          : transactionListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<TransactionModel>>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionModelCopyWith<$Res> get transactionModel {
    return $TransactionModelCopyWith<$Res>(_value.transactionModel, (value) {
      return _then(_value.copyWith(transactionModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionStateImplCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory _$$TransactionStateImplCopyWith(_$TransactionStateImpl value,
          $Res Function(_$TransactionStateImpl) then) =
      __$$TransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<TransactionModel> transactionList,
      TransactionModel transactionModel,
      Option<Either<MainFailure, TransactionModel>> transactionOpt,
      Option<Either<MainFailure, List<TransactionModel>>> transactionListOpt});

  @override
  $TransactionModelCopyWith<$Res> get transactionModel;
}

/// @nodoc
class __$$TransactionStateImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionStateImpl>
    implements _$$TransactionStateImplCopyWith<$Res> {
  __$$TransactionStateImplCopyWithImpl(_$TransactionStateImpl _value,
      $Res Function(_$TransactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? transactionList = null,
    Object? transactionModel = null,
    Object? transactionOpt = null,
    Object? transactionListOpt = null,
  }) {
    return _then(_$TransactionStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      transactionList: null == transactionList
          ? _value._transactionList
          : transactionList // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
      transactionModel: null == transactionModel
          ? _value.transactionModel
          : transactionModel // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
      transactionOpt: null == transactionOpt
          ? _value.transactionOpt
          : transactionOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, TransactionModel>>,
      transactionListOpt: null == transactionListOpt
          ? _value.transactionListOpt
          : transactionListOpt // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<TransactionModel>>>,
    ));
  }
}

/// @nodoc

class _$TransactionStateImpl implements _TransactionState {
  const _$TransactionStateImpl(
      {required this.isLoading,
      required final List<TransactionModel> transactionList,
      required this.transactionModel,
      required this.transactionOpt,
      required this.transactionListOpt})
      : _transactionList = transactionList;

  @override
  final bool isLoading;
  final List<TransactionModel> _transactionList;
  @override
  List<TransactionModel> get transactionList {
    if (_transactionList is EqualUnmodifiableListView) return _transactionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionList);
  }

  @override
  final TransactionModel transactionModel;
  @override
  final Option<Either<MainFailure, TransactionModel>> transactionOpt;
  @override
  final Option<Either<MainFailure, List<TransactionModel>>> transactionListOpt;

  @override
  String toString() {
    return 'TransactionState(isLoading: $isLoading, transactionList: $transactionList, transactionModel: $transactionModel, transactionOpt: $transactionOpt, transactionListOpt: $transactionListOpt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._transactionList, _transactionList) &&
            (identical(other.transactionModel, transactionModel) ||
                other.transactionModel == transactionModel) &&
            (identical(other.transactionOpt, transactionOpt) ||
                other.transactionOpt == transactionOpt) &&
            (identical(other.transactionListOpt, transactionListOpt) ||
                other.transactionListOpt == transactionListOpt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_transactionList),
      transactionModel,
      transactionOpt,
      transactionListOpt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionStateImplCopyWith<_$TransactionStateImpl> get copyWith =>
      __$$TransactionStateImplCopyWithImpl<_$TransactionStateImpl>(
          this, _$identity);
}

abstract class _TransactionState implements TransactionState {
  const factory _TransactionState(
      {required final bool isLoading,
      required final List<TransactionModel> transactionList,
      required final TransactionModel transactionModel,
      required final Option<Either<MainFailure, TransactionModel>>
          transactionOpt,
      required final Option<Either<MainFailure, List<TransactionModel>>>
          transactionListOpt}) = _$TransactionStateImpl;

  @override
  bool get isLoading;
  @override
  List<TransactionModel> get transactionList;
  @override
  TransactionModel get transactionModel;
  @override
  Option<Either<MainFailure, TransactionModel>> get transactionOpt;
  @override
  Option<Either<MainFailure, List<TransactionModel>>> get transactionListOpt;
  @override
  @JsonKey(ignore: true)
  _$$TransactionStateImplCopyWith<_$TransactionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

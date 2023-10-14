// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shop_mate/application/address/address_bloc.dart' as _i30;
import 'package:shop_mate/application/cart/cart_bloc.dart' as _i31;
import 'package:shop_mate/application/earnings/earnings_bloc.dart' as _i32;
import 'package:shop_mate/application/login/login_bloc.dart' as _i23;
import 'package:shop_mate/application/orders/orders_bloc.dart' as _i24;
import 'package:shop_mate/application/product/product_bloc.dart' as _i25;
import 'package:shop_mate/application/rating/rating_bloc.dart' as _i26;
import 'package:shop_mate/application/signup/signup_bloc.dart' as _i27;
import 'package:shop_mate/application/transaction/transaction_bloc.dart'
    as _i28;
import 'package:shop_mate/application/user/user_bloc.dart' as _i29;
import 'package:shop_mate/domain/address/i_address_facade.dart' as _i3;
import 'package:shop_mate/domain/cart/i_cart_facade.dart' as _i7;
import 'package:shop_mate/domain/earnings/i_earnings_facade.dart' as _i9;
import 'package:shop_mate/domain/login/i_login_facade.dart' as _i11;
import 'package:shop_mate/domain/order/i_order_facade.dart' as _i13;
import 'package:shop_mate/domain/product/i_product_facade.dart' as _i15;
import 'package:shop_mate/domain/rating/i_rating_facade.dart' as _i17;
import 'package:shop_mate/domain/signup/i_signup_facade.dart' as _i19;
import 'package:shop_mate/domain/transactions/i_transaction_facade.dart'
    as _i21;
import 'package:shop_mate/domain/users/i_profile_facade.dart' as _i5;
import 'package:shop_mate/infrastructure/address/address_repositary.dart'
    as _i4;
import 'package:shop_mate/infrastructure/cart/cart_repositary.dart' as _i8;
import 'package:shop_mate/infrastructure/earnings/earnings_repositary.dart'
    as _i10;
import 'package:shop_mate/infrastructure/login/login_repositary.dart' as _i12;
import 'package:shop_mate/infrastructure/orders/order_repositary.dart' as _i14;
import 'package:shop_mate/infrastructure/product/product_repositary.dart'
    as _i16;
import 'package:shop_mate/infrastructure/rating/rating_repositary.dart' as _i18;
import 'package:shop_mate/infrastructure/signup/signup_repositary.dart' as _i20;
import 'package:shop_mate/infrastructure/transactions/transactions_repositary.dart'
    as _i22;
import 'package:shop_mate/infrastructure/users/users_repositary.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.IAddressFacade>(() => _i4.AddressRepositary());
    gh.lazySingleton<_i5.IAuthFacade>(() => _i6.UsersRepositary());
    gh.lazySingleton<_i7.ICartFacade>(() => _i8.CartRepositary());
    gh.lazySingleton<_i9.IEarningsFacade>(() => _i10.EarningsRepositary());
    gh.lazySingleton<_i11.ILoginFacade>(() => _i12.LoginRepositary());
    gh.lazySingleton<_i13.IOrderFacade>(() => _i14.OrderRepositary());
    gh.lazySingleton<_i15.IProductFacade>(() => _i16.ProductRepository());
    gh.lazySingleton<_i17.IRatingFacade>(() => _i18.RatingRepositary());
    gh.lazySingleton<_i19.ISignupFacade>(() => _i20.SignupRepository());
    gh.lazySingleton<_i21.ITransactionFacade>(
        () => _i22.TransactionsRepositary());
    gh.factory<_i23.LoginBloc>(() => _i23.LoginBloc(gh<_i11.ILoginFacade>()));
    gh.factory<_i24.OrdersBloc>(() => _i24.OrdersBloc(gh<_i13.IOrderFacade>()));
    gh.factory<_i25.ProductBloc>(
        () => _i25.ProductBloc(gh<_i15.IProductFacade>()));
    gh.factory<_i26.RatingBloc>(
        () => _i26.RatingBloc(gh<_i17.IRatingFacade>()));
    gh.factory<_i27.SignupBloc>(
        () => _i27.SignupBloc(gh<_i19.ISignupFacade>()));
    gh.factory<_i28.TransactionBloc>(
        () => _i28.TransactionBloc(gh<_i21.ITransactionFacade>()));
    gh.factory<_i29.UserBloc>(() => _i29.UserBloc(gh<_i5.IAuthFacade>()));
    gh.factory<_i30.AddressBloc>(
        () => _i30.AddressBloc(gh<_i3.IAddressFacade>()));
    gh.factory<_i31.CartBloc>(() => _i31.CartBloc(gh<_i7.ICartFacade>()));
    gh.factory<_i32.EarningsBloc>(
        () => _i32.EarningsBloc(gh<_i9.IEarningsFacade>()));
    return this;
  }
}

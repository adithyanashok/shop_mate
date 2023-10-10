// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shop_mate/application/address/address_bloc.dart' as _i24;
import 'package:shop_mate/application/cart/cart_bloc.dart' as _i25;
import 'package:shop_mate/application/earnings/earnings_bloc.dart' as _i26;
import 'package:shop_mate/application/login/login_bloc.dart' as _i19;
import 'package:shop_mate/application/orders/orders_bloc.dart' as _i20;
import 'package:shop_mate/application/product/product_bloc.dart' as _i21;
import 'package:shop_mate/application/rating/rating_bloc.dart' as _i22;
import 'package:shop_mate/application/signup/signup_bloc.dart' as _i23;
import 'package:shop_mate/domain/address/i_address_facade.dart' as _i3;
import 'package:shop_mate/domain/cart/i_cart_facade.dart' as _i5;
import 'package:shop_mate/domain/earnings/i_earnings_facade.dart' as _i7;
import 'package:shop_mate/domain/login/i_login_facade.dart' as _i9;
import 'package:shop_mate/domain/order/i_order_facade.dart' as _i11;
import 'package:shop_mate/domain/product/i_product_facade.dart' as _i13;
import 'package:shop_mate/domain/rating/i_rating_facade.dart' as _i15;
import 'package:shop_mate/domain/signup/i_signup_facade.dart' as _i17;
import 'package:shop_mate/infrastructure/address/address_repositary.dart'
    as _i4;
import 'package:shop_mate/infrastructure/cart/cart_repositary.dart' as _i6;
import 'package:shop_mate/infrastructure/earnings/earnings_repositary.dart'
    as _i8;
import 'package:shop_mate/infrastructure/login/login_repositary.dart' as _i10;
import 'package:shop_mate/infrastructure/orders/order_repositary.dart' as _i12;
import 'package:shop_mate/infrastructure/product/product_repositary.dart'
    as _i14;
import 'package:shop_mate/infrastructure/rating/rating_repositary.dart' as _i16;
import 'package:shop_mate/infrastructure/signup/signup_repositary.dart' as _i18;

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
    gh.lazySingleton<_i5.ICartFacade>(() => _i6.CartRepositary());
    gh.factory<_i7.IEarningsFacade>(() => _i8.EarningsRepositary());
    gh.lazySingleton<_i9.ILoginFacade>(() => _i10.LoginRepositary());
    gh.factory<_i11.IOrderFacade>(() => _i12.OrderRepositary());
    gh.lazySingleton<_i13.IProductFacade>(() => _i14.ProductRepository());
    gh.lazySingleton<_i15.IRatingFacade>(() => _i16.RatingRepositary());
    gh.lazySingleton<_i17.ISignupFacade>(() => _i18.SignupRepository());
    gh.factory<_i19.LoginBloc>(() => _i19.LoginBloc(gh<_i9.ILoginFacade>()));
    gh.factory<_i20.OrdersBloc>(() => _i20.OrdersBloc(gh<_i11.IOrderFacade>()));
    gh.factory<_i21.ProductBloc>(
        () => _i21.ProductBloc(gh<_i13.IProductFacade>()));
    gh.factory<_i22.RatingBloc>(
        () => _i22.RatingBloc(gh<_i15.IRatingFacade>()));
    gh.factory<_i23.SignupBloc>(
        () => _i23.SignupBloc(gh<_i17.ISignupFacade>()));
    gh.factory<_i24.AddressBloc>(
        () => _i24.AddressBloc(gh<_i3.IAddressFacade>()));
    gh.factory<_i25.CartBloc>(() => _i25.CartBloc(gh<_i5.ICartFacade>()));
    gh.factory<_i26.EarningsBloc>(
        () => _i26.EarningsBloc(gh<_i7.IEarningsFacade>()));
    return this;
  }
}

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
import 'package:shop_mate/application/cart/cart_bloc.dart' as _i17;
import 'package:shop_mate/application/login/login_bloc.dart' as _i13;
import 'package:shop_mate/application/product/product_bloc.dart' as _i14;
import 'package:shop_mate/application/rating/rating_bloc.dart' as _i15;
import 'package:shop_mate/application/signup/signup_bloc.dart' as _i16;
import 'package:shop_mate/domain/cart/i_cart_facade.dart' as _i3;
import 'package:shop_mate/domain/login/i_login_facade.dart' as _i5;
import 'package:shop_mate/domain/product/i_product_facade.dart' as _i7;
import 'package:shop_mate/domain/rating/i_rating_facade.dart' as _i9;
import 'package:shop_mate/domain/signup/i_signup_facade.dart' as _i11;
import 'package:shop_mate/infrastructure/cart/cart_repositary.dart' as _i4;
import 'package:shop_mate/infrastructure/login/login_repositary.dart' as _i6;
import 'package:shop_mate/infrastructure/product/product_repositary.dart'
    as _i8;
import 'package:shop_mate/infrastructure/rating/rating_repositary.dart' as _i10;
import 'package:shop_mate/infrastructure/signup/signup_repositary.dart' as _i12;

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
    gh.lazySingleton<_i3.ICartFacade>(() => _i4.CartRepositary());
    gh.lazySingleton<_i5.ILoginFacade>(() => _i6.LoginRepositary());
    gh.lazySingleton<_i7.IProductFacade>(() => _i8.ProductRepository());
    gh.lazySingleton<_i9.IRatingFacade>(() => _i10.RatingRepositary());
    gh.lazySingleton<_i11.ISignupFacade>(() => _i12.SignupRepository());
    gh.factory<_i13.LoginBloc>(() => _i13.LoginBloc(gh<_i5.ILoginFacade>()));
    gh.factory<_i14.ProductBloc>(
        () => _i14.ProductBloc(gh<_i7.IProductFacade>()));
    gh.factory<_i15.RatingBloc>(() => _i15.RatingBloc(gh<_i9.IRatingFacade>()));
    gh.factory<_i16.SignupBloc>(
        () => _i16.SignupBloc(gh<_i11.ISignupFacade>()));
    gh.factory<_i17.CartBloc>(() => _i17.CartBloc(gh<_i3.ICartFacade>()));
    return this;
  }
}

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
import 'package:shop_mate/application/login/login_bloc.dart' as _i11;
import 'package:shop_mate/application/product/product_bloc.dart' as _i12;
import 'package:shop_mate/application/rating/rating_bloc.dart' as _i13;
import 'package:shop_mate/application/signup/signup_bloc.dart' as _i14;
import 'package:shop_mate/domain/login/i_login_facade.dart' as _i3;
import 'package:shop_mate/domain/product/i_product_facade.dart' as _i5;
import 'package:shop_mate/domain/rating/i_rating_facade.dart' as _i7;
import 'package:shop_mate/domain/signup/i_signup_facade.dart' as _i9;
import 'package:shop_mate/infrastructure/login/login_repositary.dart' as _i4;
import 'package:shop_mate/infrastructure/product/product_repositary.dart'
    as _i6;
import 'package:shop_mate/infrastructure/rating/rating_repositary.dart' as _i8;
import 'package:shop_mate/infrastructure/signup/signup_repositary.dart' as _i10;

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
    gh.lazySingleton<_i3.ILoginFacade>(() => _i4.LoginRepositary());
    gh.lazySingleton<_i5.IProductFacade>(() => _i6.ProductRepository());
    gh.lazySingleton<_i7.IRatingFacade>(() => _i8.RatingRepositary());
    gh.lazySingleton<_i9.ISignupFacade>(() => _i10.SignupRepository());
    gh.factory<_i11.LoginBloc>(() => _i11.LoginBloc(gh<_i3.ILoginFacade>()));
    gh.factory<_i12.ProductBloc>(
        () => _i12.ProductBloc(gh<_i5.IProductFacade>()));
    gh.factory<_i13.RatingBloc>(() => _i13.RatingBloc(gh<_i7.IRatingFacade>()));
    gh.factory<_i14.SignupBloc>(() => _i14.SignupBloc(gh<_i9.ISignupFacade>()));
    return this;
  }
}

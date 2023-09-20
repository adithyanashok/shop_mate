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
import 'package:shop_mate/application/signup/signup_bloc.dart' as _i5;
import 'package:shop_mate/domain/signup/i_signup_facade.dart' as _i3;
import 'package:shop_mate/infrastructure/signup/signup_repositary.dart' as _i4;

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
    gh.lazySingleton<_i3.ISignupFacade>(() => _i4.SignupRepository());
    gh.factory<_i5.SignupBloc>(() => _i5.SignupBloc(gh<_i3.ISignupFacade>()));
    return this;
  }
}

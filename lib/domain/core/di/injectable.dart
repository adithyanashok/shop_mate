import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_mate/domain/core/di/injectable.config.dart';

GetIt getIt = GetIt.instance;
@InjectableInit(initializerName: 'init')
Future<void> configureInjection() async {
  getIt.init(environment: Environment.prod);
}

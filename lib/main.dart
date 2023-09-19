import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/bottom_nav/bottom_nav_bloc.dart';
import 'package:shop_mate/application/signup/signup_bloc.dart';
import 'package:shop_mate/domain/core/di/injectable.dart';
import 'package:shop_mate/presentation/main_page.dart';
import 'package:shop_mate/presentation/splash_screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  await ScreenUtil.ensureScreenSize();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final bool user = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => BottomNavBloc()),
            BlocProvider(create: (context) => getIt<SignupBloc>()),
          ],
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              useMaterial3: true,
            ),
            debugShowCheckedModeBanner: false,
            home: user == true ? const MainPage() : const SplashScreen(),
          ));
    });
  }
}

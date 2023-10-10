import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/address/address_bloc.dart';
import 'package:shop_mate/application/auth/auth_bloc.dart';
import 'package:shop_mate/application/auth/auth_state.dart';
import 'package:shop_mate/application/cart/cart_bloc.dart';
import 'package:shop_mate/application/earnings/earnings_bloc.dart';
import 'package:shop_mate/application/orders/orders_bloc.dart';
import 'package:shop_mate/application/pageview/pageview_bloc.dart';
import 'package:shop_mate/application/bottom_nav/bottom_nav_bloc.dart';
import 'package:shop_mate/application/login/login_bloc.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/application/rating/rating_bloc.dart';
import 'package:shop_mate/application/signup/signup_bloc.dart';
import 'package:shop_mate/application/user/user_bloc.dart';
import 'package:shop_mate/domain/core/di/injectable.dart';
import 'package:shop_mate/presentation/login/login_screen.dart';
import 'package:shop_mate/presentation/main_page.dart';
import 'package:shop_mate/presentation/signup/signup_screen.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => BottomNavBloc()),
            BlocProvider(create: (context) => PageviewBloc()),
            BlocProvider(create: (context) => getIt<SignupBloc>()),
            BlocProvider(create: (context) => getIt<LoginBloc>()),
            BlocProvider(create: (context) => getIt<ProductBloc>()),
            BlocProvider(create: (context) => getIt<RatingBloc>()),
            BlocProvider(create: (context) => getIt<CartBloc>()),
            BlocProvider(create: (context) => getIt<AddressBloc>()),
            BlocProvider(create: (context) => getIt<OrdersBloc>()),
            BlocProvider(create: (context) => getIt<EarningsBloc>()),
            BlocProvider(create: (context) => getIt<UserBloc>()),
            BlocProvider<AuthBloc>(
              create: (_) => AuthBloc(),
            ),
          ],
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              useMaterial3: true,
            ),
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
            routes: {
              "login": (context) => LoginScreen(),
            },
          ));
    });
  }
}

class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.when(
          initial: () => SplashScreen(),
          authenticated: (user) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return MainPage();
              },
            ));
            return MainPage(user: user);
          },
          unauthenticated: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return SignupScreen();
              },
            ));
            return SignupScreen();
          },
        );
      },
    );
  }
}

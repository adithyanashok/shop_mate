import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:shop_mate/application/address/address_bloc.dart';
import 'package:shop_mate/application/cart/cart_bloc.dart';
import 'package:shop_mate/application/earnings/earnings_bloc.dart';
import 'package:shop_mate/application/orders/orders_bloc.dart';
import 'package:shop_mate/application/pageview/pageview_bloc.dart';
import 'package:shop_mate/application/bottom_nav/bottom_nav_bloc.dart';
import 'package:shop_mate/application/login/login_bloc.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/application/rating/rating_bloc.dart';
import 'package:shop_mate/application/signup/signup_bloc.dart';
import 'package:shop_mate/application/transaction/transaction_bloc.dart';
import 'package:shop_mate/application/user/user_bloc.dart';
import 'package:shop_mate/domain/core/api/api.dart';
import 'package:shop_mate/domain/core/di/injectable.dart';
import 'package:shop_mate/presentation/home/home_screen.dart';
import 'package:shop_mate/presentation/login/login_screen.dart';
import 'package:shop_mate/presentation/splash_screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  // Set Stripe publishable key
  Stripe.publishableKey = Api.stripePk;
  await ScreenUtil.ensureScreenSize();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundNotificationHandler);
  runApp(const MyApp());
}

@pragma('vm:entry-point')
Future<void> _firebaseBackgroundNotificationHandler(
    RemoteMessage message) async {
  await Firebase.initializeApp();
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
            BlocProvider(create: (context) => getIt<TransactionBloc>()),
          ],
          child: MaterialApp(
            title: 'Shop Mate',
            theme: ThemeData(
              useMaterial3: true,
            ),
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
            routes: {
              "login": (context) => const LoginScreen(),
              "home": (context) => const HomeScreen(),
            },
          ));
    });
  }
}

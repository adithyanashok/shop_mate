import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/bloc/bottom_nav_bloc.dart';
import 'package:shop_mate/presentation/screens/admin/home_screen.dart';
import 'package:shop_mate/presentation/screens/admin/main_screen.dart';
import 'package:shop_mate/presentation/screens/home_screen/home_screen.dart';
import 'package:shop_mate/presentation/screens/main_page.dart';
import 'package:shop_mate/presentation/screens/splash_screen/splash_screen.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  bool user = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MultiBlocProvider(
          providers: [BlocProvider(create: (context) => BottomNavBloc())],
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              useMaterial3: true,
            ),
            debugShowCheckedModeBanner: false,
            home: user == true ? MainPage() : MainScreen(),
          ));
    });
  }
}

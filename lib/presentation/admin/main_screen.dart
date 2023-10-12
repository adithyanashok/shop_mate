import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/bottom_nav/bottom_nav_bloc.dart';
import 'package:shop_mate/domain/notifications/notifications.dart';
import 'package:shop_mate/presentation/admin/bar/bar.dart';
import 'package:shop_mate/presentation/admin/home_screen.dart';
import 'package:shop_mate/presentation/admin/order_screen/orders_screen.dart';
import 'package:shop_mate/presentation/admin/product/product_screen.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/profile/profile_screen.dart';
import 'package:shop_mate/presentation/users/users.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  FirebaseNotificationService notifications = FirebaseNotificationService();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notifications.getNotificationPermission();
    notifications.firebaseInit(context);
    notifications.getDeviceToken().then((value) {
      log(value.toString());
    });
    notifications.onTokenRefresh();
  }

  @override
  Widget build(BuildContext context) {
    final screens = [
      AdminHomeScreen(),
      AdminProductScreen(),
      AdminOrdersScreen(),
      Users(),
      ProfileScreen(),
    ];
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          body: screens[state.value],
          bottomNavigationBar: BuildNavBar(
            state: state,
          ),
        );
      },
    );
  }
}

class BuildNavBar extends StatelessWidget {
  const BuildNavBar({
    super.key,
    required this.state,
  });
  final BottomNavState state;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      unselectedItemColor: AppColor.greenColor,
      selectedItemColor: AppColor.greenColor,
      backgroundColor: AppColor.colorGrey3,
      onTap: (value) {
        context
            .read<BottomNavBloc>()
            .add(BottomNavEvent.homeEvent(value: value));
      },
      currentIndex: state.value,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined), label: "Products"),
        BottomNavigationBarItem(icon: Icon(Icons.widgets), label: "Orders"),
        BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined), label: "Users"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined), label: "Profile"),
      ],
    );
  }
}

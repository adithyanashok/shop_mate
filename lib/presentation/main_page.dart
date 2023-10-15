import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/bottom_nav/bottom_nav_bloc.dart';
import 'package:shop_mate/application/user/user_bloc.dart';
import 'package:shop_mate/domain/notifications/notifications.dart';
import 'package:shop_mate/presentation/cart/cart_screen.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/home/home_screen.dart';
import 'package:shop_mate/presentation/profile/profile_screen.dart';
import 'package:shop_mate/presentation/search/search_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, this.user});

  final user;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
    BlocProvider.of<BottomNavBloc>(context)
        .add(const BottomNavEvent.homeEvent(value: 0));
    final screens = [
      const HomeScreen(),
      const SearchScreen(),
      CartScreen(),
      const ProfileScreen(),
    ];
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
            body: screens[state.value],
            bottomNavigationBar: BuildNavBar(
              state: state,
            ));
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
    BlocProvider.of<UserBloc>(context).add(const UserEvent.getUser());

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
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_filled),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            activeIcon: Icon(Icons.search_rounded),
            label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart_rounded),
            label: "Cart"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            activeIcon: Icon(Icons.person_2_rounded),
            label: "Profile"),
      ],
    );
  }
}

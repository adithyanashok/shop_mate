import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/bottom_nav/bottom_nav_bloc.dart';
import 'package:shop_mate/domain/notifications/notifications.dart';
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
    super.initState();

    // Initialize Firebase push notifications.
    notifications.getNotificationPermission();
    notifications.firebaseInit(context);
    notifications.getDeviceToken().then((value) {
      log(value.toString());
    });
    notifications.onTokenRefresh();
  }

  @override
  Widget build(BuildContext context) {
    // List of screens that can be displayed based on the selected tab.
    final screens = [
      HomeScreen(),
      const SearchScreen(),
      const ProfileScreen(),
    ];

    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
            // Display the screen based on the selected tab.
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
    // Initialize the UserBloc to retrieve user information.

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(30),
        topLeft: Radius.circular(30),
      ),
      child: BottomNavigationBar(
        // Customize the appearance of the bottom navigation bar.
        showSelectedLabels: true,
        showUnselectedLabels: false,
        unselectedItemColor: AppColor.greenColor,
        selectedItemColor: AppColor.greenColor,
        backgroundColor: AppColor.whiteColor,
        type: BottomNavigationBarType.fixed,

        // Handle tab selection and index.
        onTap: (value) {
          context
              .read<BottomNavBloc>()
              .add(BottomNavEvent.homeEvent(value: value));
        },
        currentIndex: state.value,

        // Define the tabs/items in the bottom navigation bar.
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
              icon: Icon(Icons.person_2_outlined),
              activeIcon: Icon(Icons.person_2_rounded),
              label: "Profile"),
        ],
      ),
    );
  }
}

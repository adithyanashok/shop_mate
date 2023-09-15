import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/bloc/bottom_nav_bloc.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/screens/cart_screen/cart_screen.dart';
import 'package:shop_mate/presentation/screens/checkout_screen/checkout_screen.dart';
import 'package:shop_mate/presentation/screens/home_screen/home_screen.dart';
import 'package:shop_mate/presentation/screens/product_screen/product_screen.dart';
import 'package:shop_mate/presentation/screens/profile_screen/profile_screen.dart';
import 'package:shop_mate/presentation/screens/search_screen/search_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeScreen(),
      SearchScreen(),
      CartScreen(),
      ProfileScreen(),
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
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      unselectedItemColor: AppColor.greenColor,
      selectedItemColor: AppColor.greenColor,
      backgroundColor: AppColor.colorGrey2,
      onTap: (value) {
        context
            .read<BottomNavBloc>()
            .add(BottomNavEvent.homeEvent(value: value));
      },
      currentIndex: state.value,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined), label: "Profile"),
      ],
    );
  }
}

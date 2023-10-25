// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/cart/cart_bloc.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/application/user/user_bloc.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';

import 'package:shop_mate/presentation/home/productlist_section.dart';
import 'package:shop_mate/presentation/product/products_screen.dart';
import 'package:shop_mate/presentation/signup/signup_screen.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';
import 'package:shop_mate/presentation/widgets/app_bar_widget.dart';
import 'package:shop_mate/presentation/widgets/banner_widget.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //userId
  final userId = FirebaseAuth.instance.currentUser?.uid;
  // Current page index for the PageView
  int _currentPage = 0;

  // Timer to handle automatic page switching
  Timer? _timer;

  // Page controller for the PageView
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();

    // Initialize a timer for automatic page switching
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      // Check if we are at the last page, reset to the first page if so
      if (_currentPage < 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      // Animate to the new page
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.linearToEaseOut,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    // Cancel the timer to prevent memory leaks
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ProductBloc>(context)
        .add(ProductEvent.getMobiles(category: 'mobiles', context: context));
    BlocProvider.of<ProductBloc>(context)
        .add(ProductEvent.getLaptops(category: 'laptops', context: context));
    BlocProvider.of<ProductBloc>(context).add(
        ProductEvent.getEarphones(category: 'earphones', context: context));
    BlocProvider.of<ProductBloc>(context)
        .add(const ProductEvent.getAllProduct(fetchType: 'new'));
    BlocProvider.of<CartBloc>(context)
        .add(CartEvent.getCart(userId: userId!, context: context));
    BlocProvider.of<UserBloc>(context).add(const UserEvent.getUser());
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: BuildAppBarWidget(title: "SHOPMATE"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 1.sw,
                  height: 0.2.sh,
                  child: PageView(
                    controller: _pageController,
                    children: [
                      // Banner widget for the first page
                      GestureDetector(
                        onTap: () async {
                          await signOut();
                        },
                        child: const BuildBannerWidget(
                          backgroundColor: AppColor.greenColor,
                          buttonTextColor: AppColor.greenColor,
                          image: 'assets/images/shopping.png',
                          text: '50% OFF DURING\nSALE',
                          textColor: AppColor.whiteColor,
                        ),
                      ),
                      // Banner widget for the second page
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://as1.ftcdn.net/v2/jpg/03/14/28/96/1000_F_314289607_ADADbnGr64dpGnddyhZPidCoc6jgKiHK.jpg'),
                          ),
                        ),

                        // child: Image.network(
                        //   'https://as1.ftcdn.net/v2/jpg/03/14/28/96/1000_F_314289607_ADADbnGr64dpGnddyhZPidCoc6jgKiHK.jpg',
                        //   fit: BoxFit.fill,
                        // ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 14, bottom: 10),
                  child: BuildRegularTextWidget(
                    text: "Categories",
                    fontWeight: FontWeight.w500,
                    fontSize: 19,
                  ),
                ),
                SizedBox(
                  height: 50.h,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19, right: 19),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryIconCard(
                            icon: Icons.phone_iphone,
                            onTap: () {
                              Navigator.of(context).push(
                                buildNavigation(
                                  route: const ProductsScreen(),
                                  arguments: "mobiles",
                                ),
                              );
                            },
                          ),
                          CategoryIconCard(
                            icon: Icons.laptop_mac_outlined,
                            onTap: () {
                              Navigator.of(context).push(
                                buildNavigation(
                                  route: const ProductsScreen(),
                                  arguments: "laptops",
                                ),
                              );
                            },
                          ),
                          CategoryIconCard(
                            icon: Icons.headphones_outlined,
                            onTap: () {
                              Navigator.of(context).push(
                                buildNavigation(
                                  route: const ProductsScreen(),
                                  arguments: "earphones",
                                ),
                              );
                            },
                          ),
                          CategoryIconCard(
                            icon: Icons.watch,
                            onTap: () {
                              Navigator.of(context).push(
                                buildNavigation(
                                  route: const ProductsScreen(),
                                  arguments: "watches",
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                    return ProductList(
                      state: state,
                      text: "Latest Arrival",
                      productList: state.products,
                    );
                  },
                ),
                BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                    return ProductList(
                      state: state,
                      text: "Earphones",
                      productList: state.earphoneListOpt,
                    );
                  },
                ),
                BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                    return state.mobileListOpt.isEmpty
                        ? const SizedBox()
                        : ProductList(
                            state: state,
                            text: "Mobiles",
                            productList: state.mobileListOpt,
                          );
                  },
                ),
              ],
            ),
          ),
        )
        // bottomNavigationBar: BottomNavBarWidget(),
        );
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();

      // Navigate to the onboarding screen.
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return SignupScreen();
        },
      ));
    } catch (e) {
      snackBar(context: context, msg: e.toString());
    }
  }
}

class CategoryIconCard extends StatelessWidget {
  const CategoryIconCard({
    super.key,
    required this.icon,
    this.onTap,
  });

  final IconData icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 241, 241, 241),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          size: 26,
          color: const Color.fromARGB(255, 59, 59, 59),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.image,
    required this.text,
    this.onTap,
  });
  final Image image;
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.colorGrey4,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            image,
            Text(
              text,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: AppColor.blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

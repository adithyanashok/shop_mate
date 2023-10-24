import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/orders/orders_bloc.dart';
import 'package:shop_mate/application/user/user_bloc.dart';
import 'package:shop_mate/presentation/admin/transactions/transactions.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/login/login_screen.dart';
import 'package:shop_mate/presentation/order/my_orders.dart';
import 'package:shop_mate/presentation/address/address.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch user orders when entering the profile screen.
    BlocProvider.of<OrdersBloc>(context)
        .add(OrdersEvent.getAllOrders(context: context));

    return Scaffold(
      appBar: AppBar(
        title: const BuildRegularTextWidget(text: "Profile"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Button to navigate to the address management screen.
            BuildTextButton(
              icon: Icons.home_filled,
              text: "Address",
              onTap: () {
                Navigator.of(context).push(
                  buildNavigation(route: Address()),
                );
              },
            ),
            // Button to navigate to the user's order history.
            BuildTextButton(
              icon: Icons.widgets,
              text: "Orders",
              onTap: () {
                Navigator.of(context).push(
                  buildNavigation(
                    route: MyOrders(),
                  ),
                );
              },
            ),
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                return state.user.isAdmin == true
                    ? BuildTextButton(
                        // Button to navigate to the transaction history.
                        icon: Icons.money,
                        text: "Transactions",
                        onTap: () {
                          Navigator.of(context).push(
                            buildNavigation(
                              route: const Transactions(),
                            ),
                          );
                        },
                      )
                    : const SizedBox();
              },
            ),
            // Button to log the user out.
            BuildTextButton(
              icon: Icons.logout,
              text: "Logout",
              onTap: () {
                signOut(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BuildTextButton extends StatelessWidget {
  const BuildTextButton({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  final IconData icon;
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        onTap!(); // Execute the specified callback when the button is tapped.
      },
      icon: Icon(
        icon,
        color: AppColor.blackColor,
        size: 20.sp,
      ),
      label: Text(
        text,
        style: TextStyle(
          color: AppColor.blackColor,
          fontSize: 20.sp,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}

Future<void> signOut(context) async {
  try {
    await FirebaseAuth.instance.signOut();

    // Navigate to the onboarding screen after successful sign-out.
    await Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) {
        return LoginScreen(); // Redirect to the login screen.
      },
    ));
  } catch (e) {
    snackBar(
        context: context,
        msg: e.toString()); // Display an error message if sign-out fails.
  }
}

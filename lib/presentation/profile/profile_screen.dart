import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/bottom_nav/bottom_nav_bloc.dart';
import 'package:shop_mate/application/orders/orders_bloc.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/login/login_screen.dart';
import 'package:shop_mate/presentation/order/my_orders.dart';
import 'package:shop_mate/presentation/signup/signup_screen.dart';
import 'package:shop_mate/presentation/util/snackbar.dart';
import 'package:shop_mate/presentation/widgets/app_bar_widget.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              const BuildTextButton(icon: Icons.edit, text: "Edit profile"),
              const BuildTextButton(icon: Icons.home_filled, text: "Address"),
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
              BuildTextButton(
                icon: Icons.logout,
                text: "Logout",
                onTap: () {
                  signOut(context);
                },
              ),
            ],
          ),
        ));
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
        onTap!();
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

    // Navigate to the onboarding screen.
    await Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) {
        return LoginScreen();
      },
    ));
    BlocProvider.of<BottomNavBloc>(context)
        .add(const BottomNavEvent.homeEvent(value: 0));
  } catch (e) {
    snackBar(context: context, msg: e.toString());
  }
}

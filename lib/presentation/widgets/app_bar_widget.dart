import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/cart/cart_bloc.dart';
import 'package:shop_mate/presentation/cart/cart_screen.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class BuildAppBarWidget extends StatelessWidget {
  const BuildAppBarWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      iconTheme: const IconThemeData(
        color: AppColor.blackColor,
      ),
      backgroundColor: AppColor.whiteColor,
      surfaceTintColor: AppColor.whiteColor,
      title: const BuildRegularTextWidget(
        text: "SHOPMATE",
        fontSize: 20,
        letterSpacing: 3,
        fontWeight: FontWeight.w400,
      ),
      leading: const Icon(
        Icons.logout_rounded,
        size: 26,
      ),
      actions: [
        GestureDetector(
          onTap: () => Navigator.of(context).push(
            buildNavigation(
              route: CartScreen(),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                const Icon(
                  Icons.shopping_cart_outlined,
                  size: 25,
                ),
                Positioned(
                  right: 0,
                  bottom: 10,
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: AppColor.greenColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: BlocBuilder<CartBloc, CartState>(
                        builder: (context, state) {
                          return BuildSmallText(
                            text: "${state.cart.products.length}",
                            fontWeight: FontWeight.bold,
                            color: AppColor.whiteColor,
                            fontSize: 10,
                          );
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
    // AppBar(
    //   centerTitle: true,
    //   title: BuildLogoText(title: title),
    //   backgroundColor: AppColor.greenColor,
    //   // shape: const RoundedRectangleBorder(
    //   //   borderRadius: BorderRadius.only(
    //   //     bottomLeft: Radius.circular(60),
    //   //     bottomRight: Radius.circular(60),
    //   //   ),
    //   // ),
    // );
  }
}

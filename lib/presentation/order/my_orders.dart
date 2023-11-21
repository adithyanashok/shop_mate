import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/bottom_nav/bottom_nav_bloc.dart';
import 'package:shop_mate/application/orders/orders_bloc.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/date_convertion.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/main_page.dart';
import 'package:shop_mate/presentation/order/order_tracking.dart';
import 'package:shop_mate/presentation/widgets/button_widgets.dart';
import 'package:shop_mate/presentation/widgets/loading_widget.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class MyOrders extends StatelessWidget {
  MyOrders({super.key});
  final userId = FirebaseAuth.instance.currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    // Fetch the user's orders using the OrdersBloc
    BlocProvider.of<OrdersBloc>(context).add(
        OrdersEvent.getAllOrdersOfAUser(userId: userId!, context: context));

    return Scaffold(
      appBar: AppBar(
        title: const BuildRegularTextWidget(text: "Orders"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: BlocBuilder<OrdersBloc, OrdersState>(
          builder: (context, state) {
            return state.isLoading
                ? const BuildLoadingWidget()
                : state.orderModelList.isEmpty
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/empty-orders.png"),
                          const BuildRegularTextWidget(
                            text: "No order placed yet!",
                            fontWeight: FontWeight.w300,
                          ),
                          const BuildRegularTextWidget(
                            text:
                                "No orders placed yet: You haven't made any purchases with us. Start shopping now to place your first order!",
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          BuildMediumButton(
                            backgroundColor: AppColor.greenColor,
                            textColor: AppColor.whiteColor,
                            text: "Order now!",
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    context.read<BottomNavBloc>().add(
                                          const BottomNavEvent.homeEvent(
                                              value: 0),
                                        );
                                    return const MainPage();
                                  },
                                ),
                              );
                            },
                          ),
                        ],
                      )
                    : SizedBox(
                        width: 1.sw,
                        height: 1.sh,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            final order = state.orderModelList[index];
                            return GestureDetector(
                              onTap: () {
                                // Navigate to the OrderTrackingScreen when an order is tapped
                                Navigator.of(context).push(buildNavigation(
                                  route: const OrderTrackingScreen(),
                                  arguments: order,
                                ));
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Display order date and total price
                                        BuildSmallText(
                                          text: convertDate(
                                            dateString:
                                                order.orderDate.toString(),
                                          ),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: AppColor.colorGrey1,
                                        ),
                                        BuildSmallText(
                                          text: "\$${order.totalPrice.round()}",
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.blackColor,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: order.products.map((product) {
                                        return Row(
                                          children: [
                                            // Display product image
                                            Image.network(
                                              product['image'],
                                              width: 80,
                                              height: 80,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                // Display product name and description
                                                BuildSmallText(
                                                    text: product['name']),
                                                SizedBox(
                                                  width: 0.5.sw,
                                                  child: BuildSmallText(
                                                    text:
                                                        product['description'],
                                                    color: AppColor.colorGrey1,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        );
                                      }).toList(),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const Divider(
                              height: 10,
                              color: AppColor.greenColor,
                            );
                          },
                          itemCount: state.orderModelList.length,
                        ),
                      );
          },
        ),
      ),
    );
  }
}

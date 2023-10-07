import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/orders/orders_bloc.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/date_convertion.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/order/order_tracking.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<OrdersBloc>(context)
        .add(OrdersEvent.getAllOrders(context: context));

    return Scaffold(
      appBar: AppBar(
        title: const BuildRegularTextWidget(text: "Orders"),
        centerTitle: true,
      ),
      body: SafeArea(child: BlocBuilder<OrdersBloc, OrdersState>(
        builder: (context, state) {
          return SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: ListView.separated(
              itemBuilder: (context, index) {
                final order = state.orderModelList[index];
                return GestureDetector(
                    onTap: () {
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BuildSmallText(
                                text: convertDate(
                                  dateString: order.orderDate.toString(),
                                ),
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: AppColor.colorGrey1,
                              ),
                              BuildSmallText(
                                text: "\$${order.totalPrice}",
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
                                  Image.network(
                                    product['image'],
                                    width: 80,
                                    height: 80,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      BuildSmallText(text: product['name']),
                                      SizedBox(
                                        width: 0.5.sw,
                                        child: BuildSmallText(
                                          text: product['description'],
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
                    ));
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
      )),
    );
  }
}

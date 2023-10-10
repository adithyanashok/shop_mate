import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:shop_mate/application/orders/orders_bloc.dart';
import 'package:shop_mate/presentation/admin/order_screen/order_screen.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/widgets/loading_widget.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class AdminOrdersScreen extends StatelessWidget {
  const AdminOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<OrdersBloc>(context)
        .add(OrdersEvent.getAllOrders(context: context));

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
                : SizedBox(
                    width: 1.sw,
                    height: 1.sh,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        final order = state.orderModelList[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(buildNavigation(
                              route: const OrderScreen(),
                              arguments: order.id,
                            ));
                          },
                          child: Card(
                            surfaceTintColor: AppColor.colorGrey2,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    height: 50,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        final values = order.products[index];
                                        return Image.network(
                                          values['image'],
                                          width: 50,
                                        );
                                      },
                                      itemCount: order.products.length,
                                    ),
                                  ),
                                  BuildSmallText(
                                      text: "Name: ${order.username!}"),
                                  BuildTextWithSignupLink(
                                    text1: "Email: ",
                                    text2: order.email!,
                                    text1Color: AppColor.blackColor,
                                    text1FontWeight: FontWeight.w600,
                                    text2FontWeight: FontWeight.w400,
                                    text2Color: AppColor.colorGrey1,
                                  ),
                                  BuildTextWithSignupLink(
                                    text1: "Address: ",
                                    text2: order.shippingAddress,
                                    text1Color: AppColor.blackColor,
                                    text1FontWeight: FontWeight.w600,
                                    text2FontWeight: FontWeight.w400,
                                    text2Color: AppColor.colorGrey1,
                                  ),
                                  BuildTextWithSignupLink(
                                    text1: "Date: ",
                                    text2: convertDate(
                                        dateString: "${order.orderDate}"),
                                    text1Color: AppColor.blackColor,
                                    text1FontWeight: FontWeight.w600,
                                    text2FontWeight: FontWeight.w400,
                                    text2Color: AppColor.colorGrey1,
                                  ),
                                  BuildTextWithSignupLink(
                                    text1: "Product count: ",
                                    text2: "${order.products.length}",
                                    text1Color: AppColor.blackColor,
                                    text1FontWeight: FontWeight.w600,
                                    text2FontWeight: FontWeight.w400,
                                    text2Color: AppColor.colorGrey1,
                                  ),
                                  BuildTextWithSignupLink(
                                    text1: "Total amount: ",
                                    text2: "${order.totalPrice}",
                                    text1Color: AppColor.blackColor,
                                    text1FontWeight: FontWeight.w600,
                                    text2FontWeight: FontWeight.w400,
                                    text2Color: AppColor.colorGrey1,
                                  ),
                                  BuildTextWithSignupLink(
                                    text1: "Status: ",
                                    text2: order.status,
                                    text1Color: AppColor.blackColor,
                                    text1FontWeight: FontWeight.w600,
                                    text2FontWeight: FontWeight.w400,
                                    text2Color: AppColor.colorGrey1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      itemCount: state.orderModelList.length,
                    ),
                  );
          },
        ),
      ),
    );
  }

  String convertDate({required String dateString}) {
    // Parse the date string into a DateTime object
    DateTime dateTime = DateTime.parse(dateString);

    // Create a DateFormat instance to format the date
    DateFormat formatter = DateFormat('MMM d, y, hh:mm a');

    // Format the date and time
    String formattedDate = formatter.format(dateTime);

    // Print the formatted date
    return formattedDate;
  }
}

// class BuildHorizontalProductCard extends StatelessWidget {
//   const BuildHorizontalProductCard({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }

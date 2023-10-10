import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:shop_mate/application/orders/orders_bloc.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/loading_widget.dart';
import 'package:shop_mate/presentation/widgets/product_card.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    BlocProvider.of<OrdersBloc>(context)
        .add(OrdersEvent.getAOrder(context: context, id: id.toString()));
    return Scaffold(
      appBar: AppBar(
        title: const BuildRegularTextWidget(text: "Order"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: BlocBuilder<OrdersBloc, OrdersState>(
          builder: (context, state) {
            return state.isLoading
                ? const BuildLoadingWidget()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        height: .3.sh,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final product = state.orderModel.products[index];
                            return BuildProductCard(
                              image: Image.network(
                                product['image'],
                                width: 60,
                                fit: BoxFit.fill,
                              ),
                              title: product['name'],
                              price: product['amount'].toString(),
                              description: product['description'],
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 10,
                          ),
                          itemCount: state.orderModel.products.length,
                        ),
                      ),
                      const Center(
                          child: BuildHeadingText(text: "Order Details")),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const BuildSmallText(
                              text: "From:",
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            BuildTextWithSignupLink(
                              text1: "Name: ",
                              text2: state.orderModel.username ?? '',
                              text1Color: AppColor.blackColor,
                              text1FontWeight: FontWeight.w600,
                              text2Color: AppColor.colorGrey1,
                              text2FontWeight: FontWeight.w400,
                            ),
                            BuildTextWithSignupLink(
                              text1: "Address: ",
                              text2: state.orderModel.shippingAddress,
                              text1Color: AppColor.blackColor,
                              text1FontWeight: FontWeight.w600,
                              text2Color: AppColor.colorGrey1,
                              text2FontWeight: FontWeight.w400,
                            ),
                            BuildTextWithSignupLink(
                              text1: "Email: ",
                              text2: state.orderModel.email ?? '',
                              text1Color: AppColor.blackColor,
                              text1FontWeight: FontWeight.w600,
                              text2Color: AppColor.colorGrey1,
                              text2FontWeight: FontWeight.w400,
                            ),
                            BuildTextWithSignupLink(
                              text1: "Date: ",
                              text2: convertDate(
                                dateString:
                                    state.orderModel.orderDate.toString(),
                              ),
                              text1Color: AppColor.blackColor,
                              text1FontWeight: FontWeight.w600,
                              text2Color: AppColor.colorGrey1,
                              text2FontWeight: FontWeight.w400,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const BuildSmallText(
                              text: "Amount details:",
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                            BuildTextWithSignupLink(
                              text1: "Subtotal: ",
                              text2: state.orderModel.subTotal.toString(),
                              text1Color: AppColor.blackColor,
                              text1FontWeight: FontWeight.w600,
                              text1FontSize: 14,
                              text2FontSize: 14,
                              text2Color: AppColor.blackColor,
                              text2FontWeight: FontWeight.w400,
                            ),
                            BuildTextWithSignupLink(
                              text1: "Delivery Fee: ",
                              text2:
                                  state.orderModel.totalDeliveryFee.toString(),
                              text1Color: AppColor.blackColor,
                              text1FontWeight: FontWeight.w600,
                              text1FontSize: 14,
                              text2FontSize: 14,
                              text2Color: AppColor.blackColor,
                              text2FontWeight: FontWeight.w400,
                            ),
                            BuildTextWithSignupLink(
                              text1: "Discount: ",
                              text2: state.orderModel.totalDiscount.toString(),
                              text1Color: AppColor.blackColor,
                              text1FontWeight: FontWeight.w600,
                              text1FontSize: 14,
                              text2FontSize: 14,
                              text2Color: AppColor.blackColor,
                              text2FontWeight: FontWeight.w400,
                            ),
                            BuildTextWithSignupLink(
                              text1: "Total amount: ",
                              text2: state.orderModel.totalPrice.toString(),
                              text1Color: AppColor.blackColor,
                              text1FontWeight: FontWeight.w600,
                              text1FontSize: 14,
                              text2FontSize: 14,
                              text2Color: AppColor.blackColor,
                              text2FontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: DropdownMenu(
                          initialSelection: state.orderModel.status,
                          width: 0.8.sw,
                          hintText: state.orderModel.status,
                          dropdownMenuEntries: const [
                            DropdownMenuEntry(
                              value: 'pending',
                              label: "Pending",
                            ),
                            DropdownMenuEntry(
                              value: 'shipped',
                              label: "Shipped",
                            ),
                            DropdownMenuEntry(
                              value: 'delivered',
                              label: "Delivered",
                            )
                          ],
                          onSelected: (value) {
                            BlocProvider.of<OrdersBloc>(context).add(
                              OrdersEvent.updateOrderStatus(
                                context: context,
                                id: id.toString(),
                                value: value.toString(),
                                date: DateTime.now(),
                                update: value!,
                              ),
                            );
                          },
                        ),
                      )
                    ],
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

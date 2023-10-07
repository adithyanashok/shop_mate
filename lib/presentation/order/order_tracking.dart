import 'package:flutter/material.dart';
import 'package:order_tracker_zen/order_tracker_zen.dart';
import 'package:shop_mate/domain/order/model/order_model.dart';
import 'package:shop_mate/presentation/constants/date_convertion.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final model = ModalRoute.of(context)?.settings.arguments as OrderModel;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const BuildRegularTextWidget(text: "Order"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Add padding around the OrderTrackerZen widget for better presentation.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              // OrderTrackerZen is the main widget of the package which displays the order tracking information.
              child: OrderTrackerZen(
                isShrinked: false,
                // Provide an array of TrackerData objects to display the order tracking information.
                tracker_data: [
                  // TrackerData represents a single step in the order tracking process.
                  TrackerData(
                    title: "Order Placed",
                    date: convertDate(dateString: model.orderDate.toString()),
                    // Provide an array of TrackerDetails objects to display more details about this step.
                    tracker_details: [
                      // TrackerDetails contains detailed information about a specific event in the order tracking process.
                      TrackerDetails(
                        title: "Your order was placed",
                        datetime:
                            convertDate(dateString: model.orderDate.toString()),
                      ),
                    ],
                  ),
                  // yet another TrackerData object
                  model.status == 'shipped' || model.status == 'delivered'
                      ? TrackerData(
                          title: "Order Shipped",
                          date: convertDate(
                              dateString: model.orderShippedDate.toString()),
                          tracker_details: [
                            TrackerDetails(
                              title: "Your order was shipped",
                              datetime: convertDate(
                                  dateString:
                                      model.orderShippedDate.toString()),
                            ),
                          ],
                        )
                      : TrackerData(
                          title: '',
                          date: '',
                          tracker_details: [],
                        ),
                  // And yet another TrackerData object
                  model.status == 'delivered'
                      ? TrackerData(
                          title: "Order Delivered",
                          date: convertDate(
                              dateString: model.orderDeliveredDate.toString()),
                          tracker_details: [
                            TrackerDetails(
                              title: "You received your order",
                              datetime: convertDate(
                                  dateString:
                                      model.orderDeliveredDate.toString()),
                            ),
                          ],
                        )
                      : TrackerData(
                          title: '',
                          date: '',
                          tracker_details: [],
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

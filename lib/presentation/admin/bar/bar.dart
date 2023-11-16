import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/domain/earnings/models/earnings_model.dart';
import 'package:shop_mate/domain/order/model/order_model.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class EarningsDashboard extends StatelessWidget {
  const EarningsDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Earnings per Month Chart
        FutureBuilder<List<double>>(
          future: getEarningsPerMonth(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return customContainerSkelton();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              return EarningsPerMonthChart(snapshot.data!);
            } else {
              return const Text('No data available.');
            }
          },
        ),
      ],
    );
  }
}

class EarningsPerMonthChart extends StatelessWidget {
  final List<double> earningsPerMonth;

  const EarningsPerMonthChart(this.earningsPerMonth, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: .9.sw,
        decoration: BoxDecoration(
          // color: const Color.fromARGB(255, 4, 9, 70),
          color: const Color.fromARGB(255, 2, 104, 87),
          borderRadius: BorderRadius.circular(10),
        ),
        child: BarChart(
          BarChartData(
            maxY: 1000000,
            alignment: BarChartAlignment.spaceEvenly,
            // Titles Data
            titlesData: FlTitlesData(
              leftTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              // Top Titles
              topTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, meta) {
                    return BuildSmallText(
                      text: "${value.round() + 1}",
                      color: AppColor.whiteColor,
                      fontSize: 12,
                    );
                  },
                ),
              ),
              // Right Titles
              rightTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  getTitlesWidget: (value, meta) {
                    return BuildRegularTextWidget(
                      text: meta.formattedValue,
                      fontSize: 10,
                      color: AppColor.whiteColor,
                    );
                  },
                ),
              ),

              // Bottom Titles
              bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, _) {
                  switch (value.toInt()) {
                    case 0:
                      return const BuildRegularTextWidget(
                        text: 'Jan',
                        fontSize: 10,
                        color: AppColor.whiteColor,
                      );
                    case 1:
                      return const BuildRegularTextWidget(
                        text: 'Feb',
                        fontSize: 10,
                        color: AppColor.whiteColor,
                      );
                    case 2:
                      return const BuildRegularTextWidget(
                        text: 'Mar',
                        fontSize: 10,
                        color: AppColor.whiteColor,
                      );
                    case 3:
                      return const BuildRegularTextWidget(
                        text: 'Apr',
                        fontSize: 10,
                        color: AppColor.whiteColor,
                      );
                    case 4:
                      return const BuildRegularTextWidget(
                        text: 'May',
                        fontSize: 10,
                        color: AppColor.whiteColor,
                      );
                    case 5:
                      return const BuildRegularTextWidget(
                        text: 'Jun',
                        fontSize: 10,
                        color: AppColor.whiteColor,
                      );
                    case 6:
                      return const BuildRegularTextWidget(
                        text: 'Jul',
                        fontSize: 10,
                        color: AppColor.whiteColor,
                      );
                    case 7:
                      return const BuildRegularTextWidget(
                        text: 'Aug',
                        fontSize: 10,
                        color: AppColor.whiteColor,
                      );
                    case 8:
                      return const BuildRegularTextWidget(
                        text: 'Sep',
                        fontSize: 10,
                        color: AppColor.whiteColor,
                      );
                    case 9:
                      return const BuildRegularTextWidget(
                        text: 'Oct',
                        fontSize: 10,
                        color: AppColor.whiteColor,
                      );
                    case 10:
                      return const BuildRegularTextWidget(
                        text: 'Nov',
                        fontSize: 10,
                        color: AppColor.whiteColor,
                      );
                    case 11:
                      return const BuildRegularTextWidget(
                        text: 'Dec',
                        fontSize: 10,
                        color: AppColor.whiteColor,
                      );
                    default:
                      return const Text('');
                  }
                },
              )),
            ),
            borderData: FlBorderData(show: false),
            gridData: const FlGridData(
              show: true,
              drawVerticalLine: false,
            ),
            barGroups: earningsPerMonth
                .asMap()
                .entries
                .map((entry) => BarChartGroupData(
                      x: entry.key.toInt(),
                      barRods: [
                        BarChartRodData(
                            toY: entry.value,
                            width: 12,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            rodStackItems: [
                              BarChartRodStackItem(0, 3, Colors.red),
                              BarChartRodStackItem(3, 6, Colors.green),
                              BarChartRodStackItem(6, 9, Colors.blue),
                            ]),
                      ],
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}

Future<EarningsModel> getTotalEarnings() async {
  try {
    final db = FirebaseFirestore.instance;
    List<OrderModel> orderModel = [];
    final querySnapshot = await db.collection('orders').get();
    for (var docSnapshot in querySnapshot.docs) {
      final orders =
          OrderModel.fromJson(docSnapshot.data()).copyWith(id: docSnapshot.id);
      orderModel.add(orders);
    }

    final double totalProfit = orderModel.fold<double>(
      0,
      (previousValue, order) => previousValue + order.totalPrice,
    );

    final totalProfitDoc = await db.collection('earnings').doc('earning').get();

    if (totalProfitDoc.exists) {
      await totalProfitDoc.reference.update({'totalProfit': totalProfit});
    } else {
      final earningsModel = EarningsModel(earnings: totalProfit);
      await db
          .collection('earnings')
          .doc('earning')
          .set(earningsModel.toJson());
    }

    return EarningsModel(earnings: totalProfit);
  } catch (e) {
    throw Exception('Error fetching total earnings');
  }
}

Future<List<double>> getEarningsPerMonth() async {
  try {
    final db = FirebaseFirestore.instance;
    List<double> earningsPerMonth = List.filled(12, 0.0);

    final querySnapshot = await db.collection('orders').get();
    for (var docSnapshot in querySnapshot.docs) {
      final orders = OrderModel.fromJson(docSnapshot.data());
      final month = orders.orderDate.month;
      earningsPerMonth[month - 1] += orders.totalPrice.round();
    }

    return earningsPerMonth;
  } catch (e) {
    throw Exception('Error fetching earnings per month');
  }
}

Container customContainerSkelton() {
  return Container(
    height: 350,
    width: .9.sw,
    decoration: BoxDecoration(
      color: AppColor.lightGrey,
      borderRadius: BorderRadius.circular(23),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 10,
          width: 100,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(23),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 10,
          width: 100,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(23),
          ),
        ),
      ],
    ),
  );
}

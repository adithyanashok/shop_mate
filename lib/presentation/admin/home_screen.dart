import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/earnings/earnings_bloc.dart';
import 'package:shop_mate/application/orders/orders_bloc.dart';
import 'package:shop_mate/presentation/constants/amount_formate.dart';
import 'package:shop_mate/presentation/widgets/custom_card.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<EarningsBloc>(context)
        .add(const EarningsEvent.getTotalEarnings());
    BlocProvider.of<OrdersBloc>(context).add(
      OrdersEvent.getAllOrders(context: context),
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BlocBuilder<EarningsBloc, EarningsState>(
                    builder: (context, state) {
                      return CustomCard(
                        label: "Total Earnings",
                        text: convertAmount(
                          amount: state.earningsModel.earnings,
                        ),
                        color: const Color.fromARGB(255, 24, 38, 231),
                        isLoading: state.isLoading,
                      );
                    },
                  ),
                  BlocBuilder<OrdersBloc, OrdersState>(
                    builder: (context, state) {
                      return CustomCard(
                        label: "Total Orders",
                        text: state.orderModelList.length.toString(),
                        color: const Color.fromARGB(255, 24, 38, 231),
                        isLoading: state.isLoading,
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/earnings/earnings_bloc.dart';
import 'package:shop_mate/application/orders/orders_bloc.dart';
import 'package:shop_mate/application/user/user_bloc.dart';
import 'package:shop_mate/presentation/admin/bar/bar.dart';
import 'package:shop_mate/presentation/constants/amount_formate.dart';
import 'package:shop_mate/presentation/widgets/custom_card.dart';
import 'package:shop_mate/presentation/widgets/loading_widget.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';
import 'package:shop_mate/presentation/widgets/user_card.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<EarningsBloc>(context)
        .add(const EarningsEvent.getTotalEarnings());
    BlocProvider.of<OrdersBloc>(context).add(
      OrdersEvent.getAllOrders(context: context),
    );
    BlocProvider.of<UserBloc>(context)
        .add(const UserEvent.getUsers(getAllUsers: false));

    return Scaffold(
      appBar: AppBar(
        title: const BuildRegularTextWidget(
          text: "Admin Dashboard",
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: SingleChildScrollView(
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
                ),
                const SizedBox(
                  height: 30,
                ),
                const BuildSmallText(
                  text: "Earnings per month",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                const EarningsDashboard(),
                const SizedBox(
                  height: 20,
                ),
                const BuildSmallText(
                  text: "Latest users",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                BlocBuilder<UserBloc, UserState>(
                  builder: (context, state) {
                    return state.isLoading
                        ? const BuildLoadingWidget()
                        : ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final user = state.userModel[index];
                              return UserCard(user: user);
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                height: 10,
                              );
                            },
                            itemCount: state.userModel.length,
                          );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

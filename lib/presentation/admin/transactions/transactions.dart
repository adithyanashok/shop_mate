import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/transaction/transaction_bloc.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/date_convertion.dart';
import 'package:shop_mate/presentation/widgets/loading_widget.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TransactionBloc>(context)
        .add(const TransactionEvent.fetchTransactions());
    return Scaffold(
      appBar: AppBar(
        title: const BuildRegularTextWidget(text: "Transactions"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: BlocBuilder<TransactionBloc, TransactionState>(
          builder: (context, state) {
            return state.isLoading
                ? const BuildLoadingWidget()
                : ListView.separated(
                    itemBuilder: (context, index) {
                      final transaction = state.transactionList[index];
                      return ListTile(
                        tileColor: AppColor.lightGrey,
                        title: Text(transaction.name),
                        subtitle: Text(
                          transaction.email,
                        ),
                        trailing: BuildSmallText(
                          text: transaction.amount.round().toString(),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        leading: CircleAvatar(
                          backgroundColor: AppColor.greenColor,
                          radius: 25,
                          child: Center(
                            child: BuildSmallText(
                              text: convertDateIntoMonthAndDay(
                                dateString: transaction.date.toString(),
                              ),
                              textOverflow: TextOverflow.visible,
                              color: AppColor.whiteColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: state.transactionList.length,
                  );
          },
        ),
      ),
    );
  }
}

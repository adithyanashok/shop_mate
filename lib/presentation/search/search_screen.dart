import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/orders/orders_bloc.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/search/widgets/search_screen_widgets.dart';
import 'package:shop_mate/presentation/widgets/product_card.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<OrdersBloc, OrdersState>(
          builder: (context, state) {
            final orderModelList = state.orderModelList;

            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: orderModelList.map((orderModel) {
                  return Column(
                    children: orderModel.products.map((product) {
                      return BuildProductCard(
                          image: Image.network(
                            product['image'],
                            width: 80,
                            height: 80,
                          ),
                          title: product['name'],
                          price: product['amount'].toString(),
                          description: product['description']);
                    }).toList(),
                  );
                }).toList(),
              ),
            );
          },
        ),
      ),

      // body: SafeArea(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       const BuildSearchBarWidget(),
      //       const Padding(
      //         padding: EdgeInsets.all(8.0),
      //         child: BuildMiniText(fontSize: 13, text: 'Results'),
      //       ),
      //       Expanded(
      //         child: GridView.builder(
      //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //             crossAxisCount: 2,
      //             childAspectRatio: 0.8,
      //             crossAxisSpacing: 1,
      //             mainAxisSpacing: 3,
      //           ),
      //           itemBuilder: (context, index) {
      //             return BuildProductCard(
      //                 image: Image.asset('assets/images/macbook.png'),
      //                 title: 'Macbook Pro M2',
      //                 price: '1000',
      //                 description: 'Brand new Macbook Pro with M2 chipset');
      //           },
      //           itemCount: 6,
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}

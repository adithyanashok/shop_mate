import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/presentation/admin/product/add_product/add_product_screen.dart';
import 'package:shop_mate/presentation/constants/colors.dart';

class AdminProductScreen extends StatelessWidget {
  const AdminProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ProductBloc>(context)
        .add(const ProductEvent.getAllProduct());

    return Scaffold(
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: state.products.isEmpty
                    ? const Center(
                        child: Text('No Products'),
                      )
                    : DataTable2(
                        dataRowHeight: 100,
                        columns: const [
                          DataColumn(
                            label: Text("Image"),
                          ),
                          DataColumn(
                            label: Text("Name"),
                          ),
                          DataColumn(
                            label: Text("Qty"),
                          ),
                          DataColumn(
                            label: Text("Price"),
                          ),
                        ],
                        rows: List.generate(
                          state.products.length,
                          (index) {
                            final product = state.products[index];

                            return DataRow(
                              cells: [
                                DataCell(
                                  Image.network(
                                    product.image![0],
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    product.name,
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    '${product.quantity}',
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    '${product.amount}',
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      )),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return AddProductScreen();
            },
          );
        },
        backgroundColor: AppColor.greenColor,
        tooltip: "Add product",
        child: const Icon(
          Icons.add,
          color: AppColor.whiteColor,
        ),
      ),
    );
  }
}

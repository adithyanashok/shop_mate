import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/presentation/admin/product/add_product/add_product_screen.dart';
import 'package:shop_mate/presentation/admin/product/edit_product/edit_product.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/product/product_screen.dart';
import 'package:shop_mate/presentation/widgets/loading_widget.dart';

class AdminProductScreen extends StatelessWidget {
  const AdminProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ProductBloc>(context)
        .add(const ProductEvent.getAllProduct());

    return Scaffold(
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          // log(state.productList.toString());
          return SafeArea(
            child: state.isLoading
                ? const BuildLoadingWidget()
                : Padding(
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
                                      onTap: () {
                                        Navigator.of(context).push(
                                          buildNavigation(
                                            route: ProductScreen(),
                                            arguments: product.id!,
                                          ),
                                        );
                                      },
                                      onLongPress: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return SimpleDialog(
                                              title: Text(product.name),
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          15,
                                                        ),
                                                        color: Colors.red,
                                                      ),
                                                      child: IconButton(
                                                        onPressed: () {
                                                          BlocProvider.of<
                                                                      ProductBloc>(
                                                                  context)
                                                              .add(
                                                            ProductEvent
                                                                .deleteProduct(
                                                              productId:
                                                                  product.id!,
                                                              context: context,
                                                            ),
                                                          );
                                                        },
                                                        icon: const Icon(
                                                          Icons.delete,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          15,
                                                        ),
                                                        color: Colors.blue,
                                                      ),
                                                      child: IconButton(
                                                        onPressed: () {
                                                          showModalBottomSheet(
                                                            context: context,
                                                            isScrollControlled:
                                                                true,
                                                            builder: (context) {
                                                              return EditProductScreen(
                                                                product:
                                                                    product,
                                                                id: product.id!,
                                                              );
                                                            },
                                                          );
                                                        },
                                                        icon: const Icon(
                                                          Icons.edit,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            );
                                          },
                                        );
                                      },
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

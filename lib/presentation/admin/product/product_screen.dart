import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/presentation/admin/product/add_product/add_product_screen.dart';
import 'package:shop_mate/presentation/admin/product/product_actions.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/product/product_screen.dart';
import 'package:shop_mate/presentation/widgets/loading_widget.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class AdminProductScreen extends StatelessWidget {
  const AdminProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ProductBloc>(context)
        .add(const ProductEvent.getAllProduct(fetchType: 'all-products'));

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
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/products.png"),
                              const BuildRegularTextWidget(
                                text: "No products found",
                                fontWeight: FontWeight.w300,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
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
                                        width: 50,
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
                                        productActions(context, product);
                                      },
                                    ),
                                    DataCell(
                                      BuildSmallText(
                                        text: product.name,
                                        fontSize: 10,
                                        textOverflow: TextOverflow.fade,
                                      ),
                                    ),
                                    DataCell(
                                      BuildRegularTextWidget(
                                        text: '${product.quantity}',
                                        fontSize: 11,
                                      ),
                                    ),
                                    DataCell(
                                      BuildRegularTextWidget(
                                        text: '${product.amount}',
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                  ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return const AddProductScreen();
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

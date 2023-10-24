import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/presentation/widgets/loading_widget.dart';
import 'package:shop_mate/presentation/widgets/product_card.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productCat = ModalRoute.of(context)?.settings.arguments as String;

    BlocProvider.of<ProductBloc>(context).add(
        ProductEvent.getProductsByCategory(
            category: productCat, context: context));
    return Scaffold(
      appBar: AppBar(
        title: BuildRegularTextWidget(
          text: '${productCat.toUpperCase()}S',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return state.isLoading
                ? const Center(
                    child: BuildLoadingWidget(),
                  )
                : state.products.isEmpty
                    ? const Center(
                        child: Text("No Products"),
                      )
                    : CustomScrollView(
                        slivers: [
                          SliverGrid(
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 250, // Adjust as needed
                              mainAxisSpacing: 4,
                              crossAxisSpacing: 4,
                              childAspectRatio:
                                  1, // You can adjust this aspect ratio
                            ),
                            delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                                final product = state.products[index];
                                return BuildProductCard(
                                  image: Image.network(
                                    product.image![0],
                                    width: 50,
                                  ),
                                  title: product.name,
                                  price: product.amount.toString(),
                                  description: product.description,
                                );
                              },
                              childCount: state.products.length,
                            ),
                          ),
                        ],
                      );
          },
        ),
      ),
    );

    // child: Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Expanded(
    //       child: BlocBuilder<ProductBloc, ProductState>(
    //         builder: (context, state) {
    //           return GridView.builder(
    //             gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //               maxCrossAxisExtent: 0.5.sw,
    //             ),
    //             itemBuilder: (context, index) {
    //               final product = state.products[index];
    //               return BuildProductCard(
    //                 image: Image.network(
    //                   product.image![0],
    //                   width: 80,
    //                 ),
    //                 title: product.name,
    //                 price: product.amount.toString(),
    //                 description: product.description,
    //               );
    //             },
    //             itemCount: state.products.length,
    //           );
    //         },
    //       ),
    //     )
    //   ],
    // ),
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/product/product_screen.dart';
import 'package:shop_mate/presentation/widgets/loading_widget.dart';
import 'package:shop_mate/presentation/widgets/product_card.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productCat = ModalRoute.of(context)?.settings.arguments as String;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ProductBloc>(context).add(
        ProductEvent.getProductsByCategory(
          category: productCat,
          context: context,
        ),
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: BuildRegularTextWidget(
          text: productCat.toUpperCase(),
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
                                  onTap: () {
                                    Navigator.of(context).push(
                                      buildNavigation(
                                        route: ProductScreen(),
                                        arguments: product.id,
                                      ),
                                    );
                                  },
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
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/product/product_screen.dart';
import 'package:shop_mate/presentation/widgets/loading_widget.dart';
import 'package:shop_mate/presentation/widgets/product_card.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
    this.state,
    required this.text,
    required this.productList,
  });

  final dynamic state; // The state that contains product data
  final String text; // The title text for the product list
  final List productList; // The list of products to display

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: state.isLoading
          ? const BuildLoadingWidget() // Display a loading widget when data is loading
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: BuildHeadingText(
                    text: text, // Display the product category title
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final product = productList[index];
                      return BuildProductCard(
                        title: product.name, // Display the product name
                        image: Image.network(
                          product.image![0], // Display the product image
                          fit: BoxFit.cover,
                          width: 79,
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            buildNavigation(
                              route: ProductScreen(),
                              arguments: product
                                  .id, // Navigate to the product screen with the product ID
                            ),
                          );
                        },
                        description: product
                            .description, // Display the product description
                        price:
                            "${product.amount.round()}", // Display the product price
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(),
                    itemCount: productList.length,
                  ),
                ),
              ],
            ),
    );
  }
}

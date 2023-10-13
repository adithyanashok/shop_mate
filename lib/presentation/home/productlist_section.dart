import 'dart:developer';

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

  final dynamic state;
  final String text;
  final List productList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: state.isLoading
          ? const BuildLoadingWidget()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: BuildHeadingText(
                    text: text,
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final product = productList[index];
                      return BuildProductCard(
                        title: product.name,
                        image: Image.network(
                          product.image![0],
                          fit: BoxFit.cover,
                          width: 80,
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            buildNavigation(
                              route: ProductScreen(),
                              arguments: product.id,
                            ),
                          );
                        },
                        description: product.description,
                        price: "${product.amount.round()}",
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

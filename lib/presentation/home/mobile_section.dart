import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/product/product_screen.dart';
import 'package:shop_mate/presentation/widgets/loading_widget.dart';
import 'package:shop_mate/presentation/widgets/product_card.dart';

class MobileSection extends StatelessWidget {
  const MobileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ProductBloc>(context)
        .add(ProductEvent.getMobiles(category: 'mobile', context: context));
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return state.isLoading
              ? const BuildLoadingWidget()
              : SizedBox(
                  height: 250,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final product = state.mobileListOpt[index];
                      return BuildProductCard(
                        title: product.name,
                        image: Image.network(
                          product.image[0],
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
                    itemCount: state.mobileListOpt.length,
                  ),
                );
        },
      ),
    );
  }
}

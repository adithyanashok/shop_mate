import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/product/product_screen.dart';
import 'package:shop_mate/presentation/widgets/loading_widget.dart';
import 'package:shop_mate/presentation/widgets/product_card.dart';

class EarphonesSection extends StatelessWidget {
  const EarphonesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ProductBloc>(context)
        .add(ProductEvent.getEarphones(category: 'earphone', context: context));
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
                        final value = state.earphoneListOpt[index];
                        return BuildProductCard(
                          title: value.name,
                          image: Image.network(
                            value.image![0],
                            fit: BoxFit.cover,
                            width: 80,
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              buildNavigation(
                                route: ProductScreen(),
                                arguments: value.id,
                              ),
                            );
                          },
                          description: value.description,
                          price: "${value.amount.round()}",
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(),
                      itemCount: state.earphoneListOpt.length,
                    ),
                  );
          },
        ));
  }
}

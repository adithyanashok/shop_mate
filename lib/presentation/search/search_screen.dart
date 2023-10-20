import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/search/widgets/search_screen_widgets.dart';
import 'package:shop_mate/presentation/widgets/product_card.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildSearchBarWidget(
              onSubmitted: (query) {
                query = query;
                BlocProvider.of<ProductBloc>(context).add(
                  ProductEvent.searchProduct(query: query, sort: 'new'),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: BuildMiniText(fontSize: 13, text: 'Results'),
            ),
            Expanded(
              child: BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: .5,
                    ),
                    itemBuilder: (context, index) {
                      final product = state.products[index];
                      return BuildProductCard(
                        image: Image.network(
                          product.image![0],
                          width: 80,
                        ),
                        title: product.name,
                        price: product.amount.toString(),
                        description: product.description,
                      );
                    },
                    itemCount: state.products.length,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SortingWidget extends StatefulWidget {
  SortingWidget({
    Key? key,
    this.selected = false,
  }) : super(key: key);

  bool selected;

  @override
  _SortingWidgetState createState() => _SortingWidgetState();
}

class _SortingWidgetState extends State<SortingWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.selected = !widget.selected;
        });
        print(widget.selected);
      },
      child: Container(
        color: widget.selected ? AppColor.greenColor : AppColor.whiteColor,
        width: double.infinity,
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Text(
            "Popular",
            style: TextStyle(
              color:
                  widget.selected ? AppColor.whiteColor : AppColor.blackColor,
            ),
          ),
        ),
      ),
    );
  }
}

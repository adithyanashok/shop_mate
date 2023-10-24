import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/product/product_screen.dart';
import 'package:shop_mate/presentation/search/widgets/search_screen_widgets.dart';
import 'package:shop_mate/presentation/widgets/product_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar widget to allow users to search for products.
            BuildSearchBarWidget(
              onSubmitted: (query) {
                // Trigger a product search with the provided query.
                query = query; // This assignment seems unnecessary.
                BlocProvider.of<ProductBloc>(context).add(
                  ProductEvent.searchProduct(query: query, sort: 'new'),
                );
              },
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
                      final product = state.searchResults[index];
                      return BuildProductCard(
                        image: Image.network(
                          product.image![0],
                          width: 80,
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
                    itemCount: state.searchResults.length,
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
          // Toggle the 'selected' state when tapped.
          widget.selected = !widget.selected;
        });
        print(widget.selected); // Print the current state for debugging.
      },
      child: Container(
        // Change the background color based on the 'selected' state.
        color: widget.selected ? AppColor.greenColor : AppColor.whiteColor,
        width: double.infinity,
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Text(
            "Popular",
            style: TextStyle(
              // Adjust the text color based on the 'selected' state.
              color:
                  widget.selected ? AppColor.whiteColor : AppColor.blackColor,
            ),
          ),
        ),
      ),
    );
  }
}

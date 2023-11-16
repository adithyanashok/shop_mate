import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class BuildSearchBarWidget extends StatefulWidget {
  const BuildSearchBarWidget({
    super.key,
    required this.onSubmitted,
  });
  final Function(String query) onSubmitted;

  @override
  State<BuildSearchBarWidget> createState() => _BuildSearchBarWidgetState();
}

class _BuildSearchBarWidgetState extends State<BuildSearchBarWidget> {
  TextEditingController queryController = TextEditingController();

  @override
  void dispose() {
    queryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
              horizontal: 16, vertical: 10), // Added margin for spacing
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
                color: AppColor.greenColor), // Moved border styling here
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                // Use Expanded to constrain the TextField width
                child: Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: TextField(
                    controller: queryController,
                    onSubmitted: (value) {
                      // Callback to handle submitted query.
                      widget.onSubmitted(value);
                    },
                    style: const TextStyle(fontSize: 13, height: 1),
                    decoration: const InputDecoration(
                      hintText: "Search...",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  // Trigger a product search with the query and sorting option.
                  BlocProvider.of<ProductBloc>(context).add(
                    ProductEvent.searchProduct(
                      query: queryController.text,
                      sort: 'high',
                    ),
                  );
                },
                icon: const Icon(Icons.search),
              ),
            ],
          ),
        ),
        BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return state.searchResults.isNotEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomRadioButton(
                        elevation: 0,
                        autoWidth: true,
                        shapeRadius: 15,
                        enableShape: true,
                        selectedBorderColor: Colors.transparent,
                        unSelectedBorderColor: AppColor.greenColor,
                        buttonLables: const [
                          "New",
                          "Price: Low to high",
                          "Price: High to low",
                        ],
                        buttonValues: const [
                          "new",
                          "low",
                          "high",
                        ],
                        radioButtonValue: (value) {
                          // Update the product search results based on the sorting option.
                          BlocProvider.of<ProductBloc>(context).add(
                            ProductEvent.searchProduct(
                              query: queryController.text,
                              sort: value,
                            ),
                          );
                        },
                        unSelectedColor: Colors.white,
                        selectedColor: AppColor.greenColor,
                      ),
                      // A label for displaying the search results.
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: BuildMiniText(fontSize: 13, text: 'Results'),
                      ),
                    ],
                  )
                : const SizedBox(); // Display nothing when there are no products.
          },
        ),
      ],
    );
  }
}

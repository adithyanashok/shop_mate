import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_mate/application/product/product_bloc.dart';
import 'package:shop_mate/presentation/constants/colors.dart';

class BuildSearchBarWidget extends StatefulWidget {
  BuildSearchBarWidget({
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
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: 16, vertical: 10), // Added margin
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: AppColor.greenColor), // Moved border here
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
              BlocProvider.of<ProductBloc>(context).add(
                ProductEvent.searchProduct(query: queryController.text),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}

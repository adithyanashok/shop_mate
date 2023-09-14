import 'package:flutter/material.dart';
import 'package:shop_mate/presentation/widgets/app_bar_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: BuildAppBarWidget(title: "Cart"),
      ),
      body: Center(
        child: Text("Cart Screen"),
      ),
    );
  }
}

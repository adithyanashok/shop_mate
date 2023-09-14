import 'package:flutter/material.dart';
import 'package:shop_mate/presentation/widgets/app_bar_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: BuildAppBarWidget(title: "Cart"),
      ),
      body: Center(
        child: Text("Profile Screen"),
      ),
    );
  }
}

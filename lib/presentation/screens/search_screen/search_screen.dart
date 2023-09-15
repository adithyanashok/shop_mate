import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/screens/search_screen/widgets/search_screen_widgets.dart';
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
            const BuildSearchBarWidget(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: BuildMiniText(fontSize: 13, text: 'Results'),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 3,
                ),
                itemBuilder: (context, index) {
                  return const BuildProductCard(
                      image: 'assets/images/macbook.png',
                      title: 'Macbook Pro M2',
                      price: '1000',
                      description: 'Brand new Macbook Pro with M2 chipset');
                },
                itemCount: 6,
              ),
            )
          ],
        ),
      ),
    );
  }
}

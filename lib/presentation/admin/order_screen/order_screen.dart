import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/product_card.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class AdminOrdersScreen extends StatelessWidget {
  AdminOrdersScreen({super.key});

  var val = 'Pending';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BuildRegularTextWidget(text: "Orders"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          width: 1.sw,
          height: 1.sh,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/macbook.png',
                        width: 95,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const BuildSmallText(text: 'Macbook Pro M2'),
                          SizedBox(
                            width: 0.5.sw,
                            child: const BuildSmallText(
                              text: 'Macbook Pro M2',
                              color: AppColor.colorGrey1,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      DropdownButton(
                        hint: Text(val),
                        items: const [
                          DropdownMenuItem(
                            value: 'Shipped',
                            child: Text("Shipped"),
                          ),
                          DropdownMenuItem(
                            value: 'Delivered',
                            child: Text("Delivered"),
                          ),
                        ],
                        onChanged: (value) {},
                      ),
                    ],
                  )
                ],
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: 100,
          ),
        ),
      ),
    );
  }
}

// class BuildHorizontalProductCard extends StatelessWidget {
//   const BuildHorizontalProductCard({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }

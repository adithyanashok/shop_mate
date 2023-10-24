import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/constants/route_animation.dart';
import 'package:shop_mate/presentation/main_page.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.greenColor,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display a checkmark icon to indicate a successful order
            CircleAvatar(
              radius: 100,
              child: Center(
                child: Image.asset(
                  'assets/images/check.png',
                  color: AppColor.greenColor,
                  width: 160,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Show a success message to inform the user that the order was completed successfully
            Text(
              'Order Successfully Completed',
              style: TextStyle(
                fontSize: 20.sp,
                color: AppColor.whiteColor,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.84.sp,
              ),
            ),
            // Add a button to navigate back to the main page
            TextButton.icon(
              onPressed: () {
                Navigator.of(context)
                    .push(buildNavigation(route: const MainPage()));
              },
              icon: const Icon(
                Icons.arrow_back,
                color: AppColor.whiteColor,
              ),
              label: const BuildButtonText(text: 'Back'),
            )
          ],
        ),
      )),
    );
  }
}

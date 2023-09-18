import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_mate/presentation/constants/colors.dart';
import 'package:shop_mate/presentation/widgets/text_widgets.dart';

class BuildAppBarWidget extends StatelessWidget {
  const BuildAppBarWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: BuildLogoText(title: title),
      backgroundColor: AppColor.greenColor,
    );
  }
}

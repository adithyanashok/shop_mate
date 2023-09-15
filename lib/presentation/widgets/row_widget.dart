import 'package:flutter/material.dart';

class BuildTextRow extends StatelessWidget {
  const BuildTextRow({
    super.key,
    required this.text1,
    required this.text2,
  });
  final Widget text1;
  final Widget text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        text1,
        text2,
      ],
    );
  }
}

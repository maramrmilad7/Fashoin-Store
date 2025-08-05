import 'package:fashoinstore/constants/colors.dart';
import 'package:fashoinstore/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class HeaderOfCheckout extends StatelessWidget {
  const HeaderOfCheckout({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: title.toUpperCase(),
          size: 26,
          weight: FontWeight.w300,
          color: AppColors.primary,
        ),

        Image.asset('assets/svgs/line.png', color: Colors.black, width: 140),
      ],
    );
  }
}

import 'dart:ui';

import 'package:fashoinstore/widgets/custom_text.dart';
import 'package:fashoinstore/widgets/customtextfeild.dart';
import 'package:flutter/material.dart';

class AdressInfo extends StatelessWidget {
  const AdressInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Iris Watson',
                  color: Color(0xff1A1A1A),
                  size: 18,
                  weight: FontWeight.w600,
                ),
                CustomText(
                  text: '606-3727 Ullamcorper. Street \nRoseville NH 11523',
                  max: 3,
                  color: Color(0xff888888),
                  size: 18,
                  weight: FontWeight.w200,
                ),

                CustomText(
                  text: '(786) 713-8616',
                  max: 3,
                  color: Color(0xff888888),
                  size: 18,
                  weight: FontWeight.w200,
                ),
              ],
            ),
          ),
        ),

        CustomTextFeild(title: 'Add Shipping Address', icon: Icons.add),
      ],
    );
  }
}

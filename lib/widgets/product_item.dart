
import 'package:fashoinstore/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285,
      width: 165,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/product/product1.png'),
          Gap(8),
          Text(
            'October collection',
            style: TextStyle(
              fontFamily: 'TenorSans',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          Text(
            'reversible angora cardigan',
            style: TextStyle(
              fontFamily: 'TenorSans',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          Text(
            r'$120',
            style: TextStyle(
              fontFamily: 'TenorSans',
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xffDD8560),
            ),
          ),
        ],
      ),
    );
  }
}
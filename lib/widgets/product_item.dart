import 'package:fashoinstore/constants/colors.dart';
import 'package:fashoinstore/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.productModel});
 final ProductModel productModel;

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
          Image.asset(productModel.image),
          Gap(8),
          Text(
        productModel.title,
            style: TextStyle(
              fontFamily: 'TenorSans',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          Text(
            productModel.description,
            style: TextStyle(
              fontFamily: 'TenorSans',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          Text(
            r'$' + productModel.price.toString(),
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

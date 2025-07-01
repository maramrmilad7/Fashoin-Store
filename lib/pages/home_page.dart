import 'package:fashoinstore/constants/colors.dart';
import 'package:fashoinstore/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: CustomAppBar(isBlack: true),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: SvgPicture.asset('assets/texts/10.svg'),
          ),
          Positioned(
            top: 40,
            left: 0,
            right: 0,

            child: SvgPicture.asset('assets/texts/October.svg'),
          ),
          Positioned(
            top: 85,
            left: 0,
            right: 0,
            child: SvgPicture.asset('assets/texts/Collection.svg'),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Gap(120),
                  Stack(
                    children: [
                      Image.asset('assets/Cover/cover1.png'),
                      Positioned(
                        right: 1,
                        bottom: 10,
                        child: SvgPicture.asset(
                          height: 175,
                          'assets/texts/10.svg',
                        ),
                      ),
                    ],
                  ),
                  Gap(20),
                  ProductItem(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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

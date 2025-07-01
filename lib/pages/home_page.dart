import 'package:fashoinstore/constants/colors.dart';
import 'package:fashoinstore/models/collection_model.dart';
import 'package:fashoinstore/models/product_model.dart';
import 'package:fashoinstore/widgets/collection_product.dart';
import 'package:fashoinstore/widgets/customAppBar.dart';
import 'package:fashoinstore/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<ProductModel> products = ProductModel.products;
  final List<CollectionModel> collections = CollectionModel.collections;

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
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.8,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return ProductItem(productModel: products[index]);
                    },
                  ),
                  Gap(15),
                  Text(
                    'You may also like'.toUpperCase(),
                    style: TextStyle(
                      color: Color(0xffFCFCFC),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Gap(5),
                  Image.asset('assets/svgs/line.png', width: 85),
                  Gap(10),
                  SizedBox(
                    height: 400,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return CollectionProduct(
                          collection: collections[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

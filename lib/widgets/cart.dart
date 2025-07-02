
import 'package:fashoinstore/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int quantity = 1; // Counter for product quantity

  @override
  Widget build(BuildContext context) {
    final ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 16),
      child: SizedBox(
        height: 134,
        width: 313,
        child: Row(
          children: [
            Image.asset(product.image, width: 100, height: 134),
            Gap(10),
            Padding(
              padding: const EdgeInsets.only(top: 7, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title.toUpperCase(),
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    product.description,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  Gap(12),
                  Row(
                    children: [
                      // Minus button
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (quantity > 1) quantity--;
                          });
                        },
                        child: SvgPicture.asset('assets/svgs/min.svg'),
                      ),
                      // Quantity display
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          quantity.toString(),
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                      // Plus button
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            quantity++;
                          });
                        },
                        child: SvgPicture.asset('assets/svgs/plus.svg'),
                      ),
                    ],
                  ),
                  Gap(20),

                  // Total price
                  Text(
                    '\$${(product.price * quantity).toStringAsFixed(2)}',
                    style: const TextStyle(
                      color: Color(0xffDD8560),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

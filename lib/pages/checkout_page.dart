import 'package:fashoinstore/constants/colors.dart';
import 'package:fashoinstore/models/product_model.dart';
import 'package:fashoinstore/widgets/CheckOutBox.dart';
import 'package:fashoinstore/widgets/cart.dart';
import 'package:fashoinstore/widgets/customAppBar.dart';
import 'package:fashoinstore/widgets/custom_text.dart';
import 'package:fashoinstore/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});
  static String id = 'checkoutPage';

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
   int quantity =0; // Counter for product quantity

  @override
  Widget build(BuildContext context) {
      final ProductModel product =
         ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(isBlack: false),
      body: Column(
        children: [
          HeaderOfCheckout(title: 'Checkout'),
         // Cart(),
          Column(
      children: [
        Padding(
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
                      CustomText(
                        text: product.title.toUpperCase(),
                        size: 14,
                        weight: FontWeight.w600,
                        color: AppColors.primary,
                      ),

                      Text(
                        product.description,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
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
                        '\$${(product.price).toStringAsFixed(2)}',
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
        ),
        Gap(10),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          indent: 27,
          endIndent: 27,

          thickness: 1,
        ),
        Gap(10),

        Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Row(
            children: [
              SvgPicture.asset('assets/svgs/promo.svg'),
              Gap(20),
              Text(
                'Add promo code',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Gap(10),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          indent: 27,
          endIndent: 27,

          thickness: 1,
        ),
        Gap(10),

        Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 35),
          child: Row(
            children: [
              SvgPicture.asset('assets/svgs/delivery.svg'),
              Gap(20),

              Text(
                'Delivery',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              // Spacer(),
              // Gap(20),
              SizedBox(width: 150),
              Text(
                'Free',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff555555),
                ),
              ),
            ],
          ),
        ),
        Gap(10),

        Divider(
          color: Colors.grey.withOpacity(0.5),
          indent: 27,
          endIndent: 27,

          thickness: 1,
        ),

        ///   Gap(107),
        Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 50),
          padding: const EdgeInsets.only(left: 10, right: 10, top: 240),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total'.toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              //   Gap(100),
              //   Spacer(),
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
    )
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, 'placeOrderPage',
           arguments: 
          {
            'product': product,
            'totalPrice': product.price * quantity,
          }
           );
        },
        
        child: CheckOutBox(title: 'checkout')),
    );
  }
}

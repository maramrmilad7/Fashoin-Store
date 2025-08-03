import 'package:fashoinstore/models/product_model.dart';
import 'package:fashoinstore/widgets/CheckOutBox.dart';
import 'package:fashoinstore/widgets/addressinfo.dart';
import 'package:fashoinstore/widgets/customAppBar.dart';
import 'package:fashoinstore/widgets/custom_text.dart';
import 'package:fashoinstore/widgets/customtextfeild.dart';
import 'package:fashoinstore/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class PlaceOrderPage extends StatelessWidget {
  const PlaceOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final ProductModel product = args['product'];
    final double totalPrice = args['totalPrice'];
    // final  product =
    //  ModalRoute.of(context)!.settings.arguments as double;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(isBlack: false),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: HeaderOfCheckout(title: 'Checkout')),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: CustomText(
              text: 'Shipping adress'.toUpperCase(),
              size: 16,
              color: Color(0xff888888),
            ),
          ),
          Gap(8),
          AdressInfo(),
          Gap(8),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: CustomText(
              text: 'Shipping method'.toUpperCase(),
              size: 16,
              color: Color(0xff888888),
            ),
          ),
          CustomTextFeild(
            title: 'Pickup at store',
            icon: Icons.arrow_drop_down,
          ),
          Gap(8),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: CustomText(
              text: 'paymentsss method'.toUpperCase(),
              size: 16,
              color: Color(0xff888888),
            ),
          ),
          CustomTextFeild(
            title: 'select payment method',
            icon: Icons.arrow_drop_down,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 120),
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
                Text(
                  '\$${(totalPrice)}',
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
      bottomNavigationBar: GestureDetector(
        onTap: () {
          // Navigator.pushNamed(context, 'placeOrderPage');
        },

        child: CheckOutBox(title: 'Place Order'),
      ),
    );
  }
}

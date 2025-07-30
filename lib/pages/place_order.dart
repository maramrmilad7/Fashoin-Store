import 'package:fashoinstore/widgets/customAppBar.dart';
import 'package:fashoinstore/widgets/custom_text.dart';
import 'package:fashoinstore/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class PlaceOrderPage extends StatelessWidget {
  const PlaceOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        ],
      ),
    );
  }
}

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

        CustomTextFeild(title: 'Add Shipping Address'),
      ],
    );
  }
}

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xffF9F9F9),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: title,
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff555555),
            ),
          ),
        ),
      ),
    );
  }
}

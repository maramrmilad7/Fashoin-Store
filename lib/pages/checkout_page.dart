import 'package:fashoinstore/widgets/cart.dart';
import 'package:fashoinstore/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});
  static String id = 'checkoutPage';

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(isBlack: false),
      body: Column(
        children: [
      Cart()  ,
        ],
      ),
    );
  }
}

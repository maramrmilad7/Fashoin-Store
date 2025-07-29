import 'package:fashoinstore/models/product_model.dart';
import 'package:fashoinstore/widgets/CheckOutBox.dart';
import 'package:fashoinstore/widgets/cart.dart';
import 'package:fashoinstore/widgets/customAppBar.dart';
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
 // int quantity =0; // Counter for product quantity

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
          Cart(),
        
        ],
      ),
      bottomNavigationBar: CheckOutBox(title: 'checkout'),
    );
  }
}

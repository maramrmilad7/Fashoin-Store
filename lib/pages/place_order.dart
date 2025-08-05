import 'package:fashoinstore/models/product_model.dart';
import 'package:fashoinstore/pages/add_shipping_address.dart';
import 'package:fashoinstore/widgets/CheckOutBox.dart';
import 'package:fashoinstore/widgets/customAppBar.dart';
import 'package:fashoinstore/widgets/custom_text.dart';
import 'package:fashoinstore/widgets/customtextfeild.dart';
import 'package:fashoinstore/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class PlaceOrderPage extends StatefulWidget {
  const PlaceOrderPage({super.key});

  @override
  State<PlaceOrderPage> createState() => _PlaceOrderPageState();
}

class _PlaceOrderPageState extends State<PlaceOrderPage> {
  dynamic _savedAddress;
  late int selectedQty;

  @override
  void initState() {
    super.initState();
  }

  ///open address
  void _openAddress(context) async {
    final addressData = await Navigator.push(
      context,
      MaterialPageRoute(builder: (c) => AddShippingAddress()),
    );

    if (addressData != null) {
      setState(() {
        _savedAddress = addressData;
      });
    }
  }

  //edit address
  void _editAddress() async {
    final newAddress = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (c) => AddShippingAddress(editData: _savedAddress),
      ),
    );

    setState(() {
      _savedAddress = newAddress;
    });
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final ProductModel product = args['product'];
    final double totalPrice = args['totalPrice'];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(isBlack: false),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: HeaderOfCheckout(title: 'Checkout')),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child:  CustomText(
                    text: 'Shipping adress'.toUpperCase(),
                    size: 16,
                    color: Color(0xff888888),
                  ),
          ),
          Gap(8),
          //   AdressInfo(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _savedAddress != null
                  ? GestureDetector(
                      onTap: () => _editAddress(),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text:
                                    '${_savedAddress['first']} ${_savedAddress['last']}',
                                color: Color(0xff1A1A1A),
                                size: 18,
                                weight: FontWeight.w600,
                              ),
                              CustomText(
                                text:
                                    '${_savedAddress['address']}\n'
                                    '${_savedAddress['city']} ${_savedAddress['state']} ${_savedAddress['zip']}',
                                max: 3,
                                color: Color(0xff888888),
                                size: 18,
                                weight: FontWeight.w200,
                              ),

                              CustomText(
                                text: '${_savedAddress['phone']}',
                                max: 3,
                                color: Color(0xff888888),
                                size: 18,
                                weight: FontWeight.w200,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : _savedAddress == null
                  ? GestureDetector(
                      onTap: () => _openAddress(context),
                      child: CustomTextFeild(
                        title: 'Add Shipping Address',
                        icon: Icons.add,
                      ),
                    )
                  : SizedBox.shrink(),
            ],
          ),
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
        onTap: () {},

        child: CheckOutBox(title: 'Place Order'),
      ),
    );
  }
}

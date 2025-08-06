import 'package:fashoinstore/models/product_model.dart';
import 'package:fashoinstore/pages/add_card_page.dart';
import 'package:fashoinstore/pages/add_shipping_address.dart';
import 'package:fashoinstore/widgets/CheckOutBox.dart';
import 'package:fashoinstore/widgets/cart.dart';
import 'package:fashoinstore/widgets/customAppBar.dart';
import 'package:fashoinstore/widgets/custom_text.dart';
import 'package:fashoinstore/widgets/customtextfeild.dart';
import 'package:fashoinstore/widgets/dialog.dart';
import 'package:fashoinstore/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlaceOrderPage extends StatefulWidget {
  const PlaceOrderPage({super.key});

  @override
  State<PlaceOrderPage> createState() => _PlaceOrderPageState();
}

class _PlaceOrderPageState extends State<PlaceOrderPage> {
  dynamic _savedAddress;
  dynamic _savedPaymentCard;
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

  //open payment card
  void openPaymentCard() async {
    final carddata = await Navigator.push(
      context,
      MaterialPageRoute(builder: (c) => AddCardPage()),
    );
    if (carddata != null) {
      _savedPaymentCard = carddata;
    }
  }
  //edit payment card
  void _editPaymentCard() async {
    final newCard = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (c) => AddCardPage(editData: _savedPaymentCard),
      ),
    );

    setState(() {
      _savedPaymentCard = newCard;
    });
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
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
            child: _savedAddress == null
                ? CustomText(
                    text: 'Shipping adress'.toUpperCase(),
                    size: 16,
                    color: Color(0xff888888),
                  )
                : SizedBox.shrink(),
          ),
          Gap(8),
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
            child: _savedPaymentCard != null && _savedAddress != null
                ? SizedBox.shrink()
                : CustomText(
                    text: 'Shipping method'.toUpperCase(),
                    size: 16,
                    color: Color(0xff888888),
                  ),
          ),
          _savedPaymentCard != null && _savedAddress != null
              ? SizedBox.shrink()
              : CustomTextFeild(
                  title: 'Pickup at store',
                  icon: Icons.arrow_drop_down,
                ),
          Gap(8),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: _savedPaymentCard == null
                ? CustomText(
                    text: 'payment method'.toUpperCase(),
                    size: 16,
                    color: Color(0xff888888),
                  )
                : SizedBox.shrink(),
          ),
          _savedPaymentCard != null
              ? GestureDetector(
                onTap: () => _editPaymentCard(),
                child: Column(
                    children: [
                      Divider(color: Colors.grey.shade300),
                      Gap(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svgs/Mastercard.svg',
                              width: 40,
                            ),
                            Gap(10),
                            CustomText(
                              text: 'Master Card Ending',
                              color: Colors.black,
                            ),
                            Gap(10),
                            CustomText(
                              text:
                                  '••••${_savedPaymentCard['number'].toString().substring(_savedPaymentCard['number'].length - 2)}',
                              color: Colors.black,
                            ),
                            Spacer(),
                            SvgPicture.asset('assets/svgs/arrow.svg'),
                          ],
                        ),
                      ),
                      Gap(20),
                      Divider(color: Colors.grey.shade300),
                    ],
                  ),
              )
              : GestureDetector(
                  onTap: () {
                    openPaymentCard();
                  },
                  child: CustomTextFeild(
                    title: 'select payment method',
                    icon: Icons.arrow_drop_down,
                  ),
                ),

          Padding(
            padding: _savedAddress != null && _savedPaymentCard != null
                ? const EdgeInsets.only(left: 5, right: 5, top: 300)
                : EdgeInsets.only(left: 5, right: 5, top: 200),
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
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return Dialog(child: CustomDailog());
            },
          );
        },

        child: CheckOutBox(title: 'Place Order'),
      ),
    );
  }
}


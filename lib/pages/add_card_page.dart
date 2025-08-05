import 'package:fashoinstore/widgets/customAppBar.dart';
import 'package:fashoinstore/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_gap/flutter_gap.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({super.key});
  static String id = 'addCardPage';

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isShow = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isBlack: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Center(child: HeaderOfCheckout(title: 'Payment Method')),
              Gap(2),
              CreditCardWidget(
                padding: 6,
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isShow,
                onCreditCardWidgetChange: (v) {},
                cardBgColor: Color(0xff505664),
                obscureCardCvv: false,
                obscureCardNumber: true,
                isHolderNameVisible: true,
              ),
              CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: (v) {},
                formKey: formKey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

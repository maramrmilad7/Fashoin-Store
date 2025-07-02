import 'package:flutter/material.dart';

class HeaderOfCheckout extends StatelessWidget {
  const HeaderOfCheckout({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title.toUpperCase(),
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Tenor Sans',
            fontWeight: FontWeight.w300,
          ),
        ),
        Image.asset('assets/svgs/line.png', color: Colors.black, width: 140),
      ],
    );
  }
}

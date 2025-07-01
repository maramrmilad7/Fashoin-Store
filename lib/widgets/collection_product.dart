import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class CollectionProduct extends StatelessWidget {
  const CollectionProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        height: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/Cover/cover1.png',
              height: 300,
              fit: BoxFit.cover,
            ),
            Gap(5),
            Text(
              'Black collection'.toUpperCase(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Tenor Sans',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:fashoinstore/models/collection_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class CollectionProduct extends StatelessWidget {
  const CollectionProduct({super.key, required this.collection});
  final CollectionModel collection;

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
              collection.image,
              height: 300,
              fit: BoxFit.cover,
            ),
            Gap(5),
            Text(
              collection.title.toUpperCase(),
              style: TextStyle(
                color: Color(0xff555555),
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

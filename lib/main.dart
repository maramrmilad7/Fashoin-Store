import 'package:fashoinstore/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( FashoinApp());
}

class FashoinApp extends StatelessWidget {
  const FashoinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    home: HomePage(),);
  }
}
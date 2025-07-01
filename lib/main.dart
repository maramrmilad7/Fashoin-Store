import 'package:device_preview/device_preview.dart';
import 'package:fashoinstore/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( DevicePreview(builder: (context) =>  FashoinApp()));
}

class FashoinApp extends StatelessWidget {
  const FashoinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder, 
      debugShowCheckedModeBanner: false,
    home: HomePage(),);
  }
}
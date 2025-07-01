import 'package:fashoinstore/constants/colors.dart';
import 'package:fashoinstore/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: CustomAppBar(isBlack: true),
    );
  }
}




import 'dart:ui';

import 'package:fashoinstore/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.isBlack});
  final bool isBlack;
  @override
  Size get preferredSize => const Size.fromHeight(80);
  @override
  Widget build(BuildContext context) {
    bool isblack = isBlack;

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
      child: AppBar(
        leadingWidth: 24,
        leading: SvgPicture.asset('assets/svgs/Menu.svg', color: isblack ? Colors.white : AppColors.primary),
        elevation: 0,
        centerTitle: true,
        backgroundColor: isblack ? AppColors.primary : Colors.white,
        title: SvgPicture.asset('assets/Logo/logo-bg.svg', color: isblack ? Colors.white : AppColors.primary),
        actions: [
          SvgPicture.asset('assets/svgs/Search.svg', color: isblack ? Colors.white : AppColors.primary),
          Gap(20),
          SvgPicture.asset('assets/svgs/shopping bag.svg', color: isblack ? Colors.white : AppColors.primary),
        ],
      ),
    );
  }
}

import 'package:fashoinstore/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:kmbal_ionicons/kmbal_ionicons.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Ionicons.logo_twitter, color: Colors.white),
              Gap(30),
              Icon(Ionicons.logo_instagram, color: Colors.white),
              Gap(30),
              Icon(Ionicons.logo_facebook, color: Colors.white),
            ],
          ),
          Gap(10),
          Image.asset('assets/svgs/line.png', width: 85),
          Gap(10),
          Text(
            'support@Gmail.com',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontFamily: 'Tenor Sans',
            ),
          ),
          Text(
            '+60 825 876',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontFamily: 'Tenor Sans',
            ),
          ),
          Text(
            '08:00 - 22:00 - Everyday',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontFamily: 'Tenor Sans',
            ),
          ),
          Gap(10),
          Image.asset('assets/svgs/line.png', width: 85),
          Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'About',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Tenor Sans',
                ),
              ),
              Gap(20),
              Text(
                'Contact',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Tenor Sans',
                ),
              ),
              Gap(20),
              Text(
                'Blog',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Tenor Sans',
                ),
              ),
            ],
          ),
          Gap(15),
          Text(
            'Copyright© OpenUI All Rights Reserved.',
            style: TextStyle(fontSize: 16, color: Color(0xff555555)),
          ),
        ],
      ),
    );
  }
}
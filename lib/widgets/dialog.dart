
import 'package:fashoinstore/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';

class CustomDailog extends StatelessWidget {
  const CustomDailog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 480,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(CupertinoIcons.clear),
              ),
            ),
            Gap(20),
            CustomText(
              text: 'Payment success'.toUpperCase(),
              color: Colors.black,
              size: 19,
            ),
            Gap(30),
            SvgPicture.asset('assets/pop/done.svg', width: 60),
            Gap(30),
            CustomText(
              text: 'Your Payment was success',
              color: Colors.black,
              size: 16,
            ),
            Gap(6),
            CustomText(
              text: 'Payment ID 1222226353'.toUpperCase(),
              color: Colors.black,
              size: 14,
            ),
            Gap(20),
            Image(
              image: AssetImage('assets/svgs/line.png'),
              color: Colors.black,
              width: 120,
            ),
            Gap(20),
            CustomText(
              text: 'Rate Your Purchase',
              color: Colors.black,
              size: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/pop/emogi1.svg'),
                Gap(20),
                SvgPicture.asset('assets/pop/emogi2.svg'),
                Gap(20),

                SvgPicture.asset('assets/pop/emogi3.svg'),
              ],
            ),
            Gap(20),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: CustomText(
                    text: 'Submit',
                    color: Colors.white,
                    size: 16,
                  ),
                ), Gap(50),
                
                 ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: CustomText(
                    text: 'Cancel',
                    color: Colors.black,
                    size: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
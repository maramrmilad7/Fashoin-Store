import 'package:fashoinstore/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.title, required this.icon, });
  final String title;
  final IconData icon;
// final  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 13),
       // height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.shade100
        ),
        child:Row(children: [
          CustomText(text: title,color: Colors.black,),
          const Spacer(),
          Icon(icon,color: Colors.black54,),
        ],)

          ),
        
      
    );
  }
}

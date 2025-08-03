import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xffF9F9F9),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: title,
              suffixIcon: Icon(icon, color: Color(0xff888888)),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
            ),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff555555),
            ),
          ),
        ),
      ),
    );
  }
}

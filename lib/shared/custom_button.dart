import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton( {super.key,required this.onTap, required this.text});
final void Function()? onTap;
final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        height: 70,
        width: 200,
        decoration: BoxDecoration(
          color: AppColors.appColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

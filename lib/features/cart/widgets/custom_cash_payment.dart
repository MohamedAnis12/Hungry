import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';

class CustomCashPayment extends StatelessWidget {
  const CustomCashPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: AppColors.dark,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(spreadRadius: 2, blurRadius: 5, color: Colors.grey),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/dollar Background Removed 1.png"),
          Text(
            "cash on delivery",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Gap(125),
          Padding(padding: EdgeInsetsGeometry.only(right: 10),
          child: Icon(Icons.circle,color: Colors.white,),),
        ],
      ),
    );
  }
}

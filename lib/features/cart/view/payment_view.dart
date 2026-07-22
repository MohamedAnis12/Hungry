import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/core/constants/app_strings.dart';
import 'package:hungry/features/cart/widgets/custom_divider.dart';
import 'package:hungry/features/cart/widgets/custom_order_text.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(AppStrings.startGap),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(CupertinoIcons.chevron_left, size: 32),
            ),
            const Gap(15),
            const Text(
              "Order summary",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Gap(10),
            CustomOrderText(title: "total", total: 16.48),
            CustomOrderText(title: "taxes", total: .9),
            CustomOrderText(title: "delivery feeds", total: 1.5),
            CustomDivider(),
            CustomOrderText(
              title: "Total:",
              total: 16.9,
              fontSize: 24,
              color: Colors.black,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("estimated delivery time :"),
                  Text("16 - 25 min"),
                ],
              ),
            ),

            Gap(50),
            Text(
              "Payment methods",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Gap(10),
            CustomCashPayment(),
          ],
        ),
      ),
    );
  }
}

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
          child: Icon(Icons.circle,color: Colors.white,),)
        ],
      ),
    );
  }
}

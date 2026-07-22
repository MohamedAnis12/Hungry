import 'package:flutter/material.dart';
import 'package:hungry/shared/custom_button.dart';

class CustomTotalPriceBottom extends StatelessWidget {
  const CustomTotalPriceBottom({super.key, required this.total, required this.buttonTitle, this.onTap});
  final double total;
  final String buttonTitle;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Spacer(flex: 1),
              Text(
                "Total",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                r"$"
                "$total",
                style: TextStyle(fontSize: 32),
              ),
              Spacer(flex: 1),
            ],
          ),
          CustomButton(onTap: onTap, text: buttonTitle),
        ],
      ),
    );
  }
}

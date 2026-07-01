import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/shared/custom_button.dart';

class CustomAddToCartBottom extends StatelessWidget {
  const CustomAddToCartBottom({super.key, required this.total});
final double total;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: AppColors.appColor.withOpacity(.5),
          borderRadius: BorderRadius.circular(15),
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
            CustomButton(onTap: () {}, text: "Add To Cart"),
          ],
        ),
      ),
    );
  }
}

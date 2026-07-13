import 'package:flutter/material.dart';
import 'package:hungry/features/cart/widgets/custom_adding_count.dart';
import 'package:hungry/features/cart/widgets/remove_button.dart';

class CustomCountItems extends StatelessWidget {
  const CustomCountItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8),
        height: 185,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(color: Colors.grey,blurRadius: 8,spreadRadius: .2)
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/test/burger test.png", width: 110),
                Text(
                  "Hamburger",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text("Veggie Burger", style: TextStyle(fontSize: 18)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [CustomAddingCount(), RemoveButton()],
            ),
          ],
        ),
      ),
    );
  }
}

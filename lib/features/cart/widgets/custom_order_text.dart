import 'package:flutter/material.dart';

class CustomOrderText extends StatelessWidget {
  const CustomOrderText({
    super.key,
    required this.title,
    required this.total,
    this.fontSize = 20,
    this.color = Colors.grey,
  });
  final String title;
  final double total;
  final double fontSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: fontSize, color: color)),
          Text(
            r"$"
            "$total",
            style: TextStyle(fontSize: fontSize, color: color),
          ),
        ],
      ),
    );
  }
}

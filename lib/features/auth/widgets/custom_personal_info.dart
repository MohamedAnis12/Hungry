import 'package:flutter/material.dart';

class CustomPersonalInfo extends StatelessWidget {
  const CustomPersonalInfo({super.key, this.icon, required this.text});
  final IconData? icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyle(fontSize: 20)),
          Icon(icon, color: Colors.grey, size: 32),
        ],
      ),
    );
  }
}

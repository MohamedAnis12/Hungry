import 'package:flutter/material.dart';

class CustomProfilePhoto extends StatelessWidget {
  const CustomProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(2000),
      ),
      child: Center(
        child: Container(
          height: 140,
          width: 140,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(2000),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';

class CustomAddingCount extends StatefulWidget {
  const CustomAddingCount({super.key});

  @override
  State<CustomAddingCount> createState() => _CustomAddingCountState();
}

class _CustomAddingCountState extends State<CustomAddingCount> {
  int count = 90;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => setState(() {
              count != 100 ? count++ : null;
            }),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AppColors.appColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.add_rounded, size: 42, color: Colors.white),
            ),
          ),
          Text(
            "$count",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () => setState(() {
              count != 0 ? count-- : null;
            }),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AppColors.appColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.remove_rounded, size: 42, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';

class CustomProfileEditing extends StatelessWidget {
  const CustomProfileEditing({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 180,
            height: 90,
            decoration: BoxDecoration(
              color: AppColors.appColor,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Edit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.edit_document, color: Colors.white),
                ],
              ),
            ),
          ),
          Container(
            width: 180,
            height: 90,
            decoration: BoxDecoration(
              color: AppColors.appColor,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Center(
              child: Container(
                width: 170,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "LogOut",
                        style: TextStyle(
                          color: AppColors.appColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.logout_rounded, color: AppColors.appColor),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
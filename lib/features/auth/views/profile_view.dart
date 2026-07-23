import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_strings.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Gap(AppStrings.startGap),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(2000),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}

class CustomPersonalInfo extends StatelessWidget {
  const CustomPersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

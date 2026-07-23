import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_strings.dart';
import 'package:hungry/features/auth/widgets/custom_personal_info.dart';
import 'package:hungry/features/auth/widgets/custom_profile_editing.dart';
import 'package:hungry/features/auth/widgets/custom_profile_icon.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Gap(AppStrings.startGap),
            CustomProfilePhoto(),
            Gap(10),
            Text(
              "Anis Ana",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            CustomPersonalInfo(text: 'email@gmail.com', icon: Icons.email),
            Spacer(),
            CustomPersonalInfo(text: '+0201021772823', icon: Icons.phone),
            Spacer(),
            CustomPersonalInfo(text: 'giza zayed ', icon: Icons.home),
            Spacer(),
            CustomProfileEditing(),
          ],
        ),
      ),
    );
  }
}



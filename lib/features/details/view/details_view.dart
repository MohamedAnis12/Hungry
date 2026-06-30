import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/core/constants/app_strings.dart';
import 'package:hungry/features/details/widgets/custom_slider.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(CupertinoIcons.chevron_left, size: 32),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(AppStrings.startGap),
              Row(
                children: [
                  Image.asset("assets/test/Customize_burger.png", height: 300),
                  Column(
                    children: [
                      Text(
                        "Customize Your Burger\n to Your Tastes.\n Ultimate Experience",
                      ),

                      CustomSlider(),
                      Row(children: [Text("🥶"), Gap(120), Text("🌶")]),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/home/widgets/custom_filter_item.dart';
import 'package:hungry/features/home/widgets/custom_text_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> filters = ["All", "Combos", "Sliders", "classic"];
  int curentCategry = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(75),

                //appbar
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/logo.svg",
                      color: AppColors.appColor,
                    ),
                    Spacer(),
                    CircleAvatar(radius: 32),
                  ],
                ),
                Gap(30),
                Text(
                  "welcome back Anis",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Gap(30),

                CustomTextField(),

                Gap(30),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(filters.length, (index) {
                      return CustomFilterItem(
                        text: filters[index],
                        isSelected: curentCategry == index ? true : false,
                        onTap: () {
                          setState(() {
                            curentCategry = index;
                          });
                        },
                      );
                    }),
                  ),
                ),

                Gap(30),

                // CustomItemCard(),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .9,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) => CustomItemCard(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomItemCard extends StatelessWidget {
  const CustomItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            offset: Offset(0, 0),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/test/Burger.png"),
            Text("Cheeseburger", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Wendy's Burger"),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amberAccent),
                Gap(2),
                Text("4.1"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

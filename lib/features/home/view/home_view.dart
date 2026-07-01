import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/core/constants/app_strings.dart';
import 'package:hungry/features/home/widgets/custom_filter_category.dart';
import 'package:hungry/features/home/widgets/custom_item_card.dart';
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
                Gap(AppStrings.startGap),

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
                      return CustomFilterCategory(
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

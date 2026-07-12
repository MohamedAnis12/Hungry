import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_strings.dart';
import 'package:hungry/features/details/model/additions_model.dart';
import 'package:hungry/features/details/widgets/custom_add_to_cart_bottom.dart';
import 'package:hungry/features/details/widgets/custom_adding_items.dart';
import 'package:hungry/features/details/widgets/custom_slider.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  final List<AdditionsModel> additionalList = [
    AdditionsModel(
      title: "Bacons",
      image: "assets/custom additions/bacons.png",
      category: "toppings",
      price: 5.0,
    ),
    AdditionsModel(
      title: "Pickles",
      image: "assets/custom additions/pickles.png",
      category: "toppings",
      price: 5.0,
    ),
    AdditionsModel(
      title: "Onions",
      image: "assets/custom additions/onions.png",
      category: "toppings",
      price: 5.0,
    ),
    AdditionsModel(
      title: "Tomato",
      image: "assets/custom additions/tomato.png",
      category: "toppings",
      price: 5.0,
    ),
    //sideOptions
    AdditionsModel(
      title: "coleslaw",
      image: "assets/custom additions/coleslaw.png",
      category: "sideOptions",
      price: 5.0,
    ),
    AdditionsModel(
      title: "fries",
      image: "assets/custom additions/fries.png",
      category: "sideOptions",
      price: 5.0,
    ),
    AdditionsModel(
      title: "friedonion",
      image: "assets/custom additions/friedonion.png",
      category: "sideOptions",
      price: 5.0,
    ),
    AdditionsModel(
      title: "salad",
      image: "assets/custom additions/salad.png",
      category: "sideOptions",
      price: 5.0,
    ),
  ];
  late List<AdditionsModel> toppingsList;
  late List<AdditionsModel> sideOptionsList;
  //bool addFlag = false;
  double total = 0;
  @override
  void initState() {
    toppingsList = additionalList
        .where((item) => item.category == "toppings")
        .toList();
    sideOptionsList = additionalList
        .where((item) => item.category == "sideOptions")
        .toList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(AppStrings.startGap),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(CupertinoIcons.chevron_left, size: 32),
                  ),
                  Gap(AppStrings.normalGap),
                  Row(
                    children: [
                      Image.asset(
                        "assets/test/Customize_burger.png",
                        height: 300,
                      ),
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
                  Gap(AppStrings.normalGap),
                  Text(
                    "Toppings",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Gap(10),
                  SizedBox(
                    height: 170,
                    child: ListView.builder(
                      itemCount: toppingsList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CustomAddingItems(
                        add: toppingsList[index].isAdd,
                        additionsModel: toppingsList[index],
                        onAddTap: () {
                          setState(() {
                            total += toppingsList[index].price!.toDouble();
                            toppingsList[index].isAdd = true;
                          });
                        },
                        onRemoveTap: () {
                          setState(() {
                            total -= toppingsList[index].price!.toDouble();
                            toppingsList[index].isAdd = false;
                          });
                        },
                      ),
                    ),
                  ),
                  Gap(AppStrings.normalGap),
                  Text(
                    "Side Options",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Gap(10),
                  SizedBox(
                    height: 170,
                    child: ListView.builder(
                      itemCount: sideOptionsList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CustomAddingItems(
                        additionsModel: sideOptionsList[index],
                        add: sideOptionsList[index].isAdd,
                        onAddTap: () {
                          setState(() {
                            total += sideOptionsList[index].price!.toDouble();
                            sideOptionsList[index].isAdd = true;
                          });
                        },
                        onRemoveTap: () {
                          setState(() {
                            total -= sideOptionsList[index].price!.toDouble();
                            sideOptionsList[index].isAdd = false;
                          });
                        },
                      ),
                    ),
                  ),
                  Gap(150),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomAddToCartBottom(total: total),
          ),
        ],
      ),
    );
  }
}

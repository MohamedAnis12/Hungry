import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_strings.dart';
import 'package:hungry/features/cart/widgets/custom_count_items.dart';
import 'package:hungry/shared/custom_total_price_bottom.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(AppStrings.startGap),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(CupertinoIcons.chevron_left, size: 32),
            ),
            Gap(5),
            SizedBox(
              height: 620,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (_,index){
                return CustomCountItems();
              }),
            ),
            CustomTotalPriceBottom(total: 15,buttonTitle: "Checkout",)
          ],
        ),
      ),
    );
  }
}



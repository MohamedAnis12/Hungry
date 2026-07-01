import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/features/details/view/details_view.dart';

class CustomItemCard extends StatelessWidget {
  const CustomItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => DetailsView()),
        );
      },
      child: Container(
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
              Text(
                "Cheeseburger",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
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
      ),
    );
  }
}

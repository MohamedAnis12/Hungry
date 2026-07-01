import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/details/model/additions_model.dart';

class CustomAddingItems extends StatelessWidget {
  const CustomAddingItems({
    super.key,
    required this.additionsModel,
    required this.onAddTap,
    required this.onRemoveTap,
    required this.add,
  });
  final AdditionsModel additionsModel;
  final void Function()? onAddTap;
  final void Function()? onRemoveTap;
  final bool add;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 120,
        decoration: BoxDecoration(
          color: AppColors.dark,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(blurRadius: 5, spreadRadius: .0001, color: Colors.grey),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: SizedBox(
                child: Image.asset("${additionsModel.image}", width: 100),
              ),
            ),
            Spacer(flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                add
                    ? GestureDetector(
                        onTap: onRemoveTap,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.appColor,
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Icon(Icons.remove, color: Colors.white),
                        ),
                      )
                    : SizedBox.shrink(),
                Text(
                  "${additionsModel.title}",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                add
                    ? SizedBox.shrink()
                    : GestureDetector(
                        onTap: onAddTap,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.appColor,
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                      ),
              ],
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}

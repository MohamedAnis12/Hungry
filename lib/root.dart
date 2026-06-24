import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/views/profile_view.dart';
import 'package:hungry/features/cart/view/cart_view.dart';
import 'package:hungry/features/home/view/home_view.dart';
import 'package:hungry/features/product/view/product_view.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  List<Widget> pages = [HomeView(), CartView(), ProductView(), ProfileView()];
  PageController controller = PageController();
  int curentPage = 0;

  @override
  void initState() {
    controller = PageController(initialPage: curentPage);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,

        physics: NeverScrollableScrollPhysics(),
        children: pages,
      ),

      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          color: AppColors.appColor,
        ),
        child: Center(
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey.shade500,
            currentIndex: curentPage,
            elevation: 0,
            onTap: (value) {
              setState(() {
                curentPage = value;
                controller.jumpToPage(value);
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.cart),
                label: "cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.messenger_outline),
                label: "products",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.profile_circled),
                label: "profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

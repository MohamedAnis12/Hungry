import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/splash_view.dart';

void main() {
  runApp(const Hungry());
}

class Hungry extends StatelessWidget {
  const Hungry({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        textSelectionTheme: TextSelectionThemeData(
          selectionHandleColor: AppColors.appColor,
          selectionColor: AppColors.appColor.withOpacity(.2),
          cursorColor: AppColors.appColor
        ),
      ),

      debugShowCheckedModeBanner: false,

      home: SplashView(),
    );
  }
}

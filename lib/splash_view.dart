import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/views/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  bool _timerFlag = false;

  Timer? _timer;
  void _startTimer() {
    _timer = Timer.periodic(const Duration(milliseconds: 250), (timer) {
      setState(() {
        _timerFlag = !_timerFlag;
      });
    });
  }

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) {
            return LoginView();
          },
        ),
      );
    });
    _startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColor,

      body: Column(
        children: [
          Gap(290),
          SvgPicture.asset("assets/logo.svg"),
          Gap(50),
          AnimatedContainer(
            duration: Duration(milliseconds: 400),
            curve: Curves.easeInOut,
            transform: Matrix4.translationValues(
              _timerFlag ? 40.0 : -40.0,
              0.0,
              0.0,
            ),
            height: 50,
            width: 50,
            decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(100)),
          ),
          Spacer(),
          Image.asset("assets/splash/splah.png"),
        ],
      ),
    );
  }
}

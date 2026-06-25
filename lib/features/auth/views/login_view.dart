import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/widgets/custom_text_form.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.appColor,

        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Center(
              child: Column(
                children: [
                  Gap(150),
                  SvgPicture.asset("assets/logo.svg"),
                  Gap(30),

                  CustomTextForm(
                    isPassword: false,
                    controller: _emailController,
                    text: "Email address",
                  ),
                  Gap(10),
                  CustomTextForm(
                    isPassword: true,
                    controller: _passwordController,
                    text: "Password ***",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

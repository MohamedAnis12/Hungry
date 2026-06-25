import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/auth/widgets/custom_submission_button.dart';
import 'package:hungry/features/auth/widgets/custom_text_form.dart';
import 'package:hungry/root.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
 final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();


  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      FocusScope.of(context).unfocus();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text("all things are good"),
          backgroundColor: Colors.green.withOpacity(.9),
        ),
      );

      Timer(Duration(seconds: 1), () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => Root()));
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("some thing went wrong"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Gap(20),
                    SvgPicture.asset("assets/logo.svg"),
                    Gap(130),

                    CustomTextForm(
                      isPassword: false,
                      controller: _emailController,
                      text: "Email address",
                    ),
                    Gap(20),
                    CustomTextForm(
                      isPassword: true,
                      controller: _passwordController,
                      text: "Password ***",
                    ),
                    Gap(70),
                    CustomSubmissionButton(onTap: _submitForm),
                    Gap(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dont have an account ?    ",
                          style: TextStyle(color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => RegisterView()),
                          ),
                          child: Text(
                            "create new one ",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
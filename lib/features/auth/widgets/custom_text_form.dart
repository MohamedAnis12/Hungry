import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';

class CustomTextForm extends StatefulWidget {
  const CustomTextForm({
    super.key,
    required this.isPassword,
    required this._controller,
    required this.text,
  });
  final bool isPassword;
  final TextEditingController _controller;
  final String text;
  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
  late bool openPassword = widget.isPassword;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget._controller,
      obscureText: openPassword,

      ///style
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),

        hintText: widget.text,
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    openPassword = !openPassword;
                  });
                },
                child: Icon(
                  openPassword == true
                      ? Icons.remove_red_eye_rounded
                      : Icons.visibility_off_outlined,
                  color: AppColors.appColor,
                ),
              )
            : Icon(Icons.arrow_back, color: Colors.white),
        //errorText: "some thing went wrong",
      ),

      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your ${widget.text}';
        }
      },
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_strings.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  double _sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(CupertinoIcons.chevron_left, size: 32),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(AppStrings.startGap),
              Row(
                children: [
                  Image.asset("assets/test/Customize_burger.png", height: 300),
                  Column(
                    children: [
                      Text(
                        "Customize Your Burger\n to Your Tastes.\n Ultimate Experience",
                      ),
                      SizedBox(
                        width: 200,
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            trackHeight:
                                8.0, 
                            

                            overlayShape: const RoundSliderOverlayShape(
                              overlayRadius:
                                  28.0,
                            ),
                          ),
                          child: Slider(
                            value: _sliderValue,
                            onChanged: (v) {
                              setState(() {
                                _sliderValue = v;
                              });
                            },
                          ),
                        ),
                      ),
                      Row(children: [Text("🥶"), Gap(120), Text("🌶")]),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hungry/core/constants/app_colors.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key,});
  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _sliderValue = .5;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          trackHeight: 8.0,

          overlayShape: const RoundSliderOverlayShape(overlayRadius: 28.0),
        ),
        child: Slider(
          value: _sliderValue,
          thumbColor: AppColors.appColor,
          activeColor: AppColors.appColor,
          inactiveColor: Colors.green.shade100,
          onChanged: (v) {
            setState(() {
              _sliderValue = v;
              print((_sliderValue * 100).truncateToDouble() / 100);
            });
          },
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/appText.dart';
import 'components/appcolors.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    Key? key,
    required this.currentSliderValue,
    required this.onChanged,
  }) : super(key: key);
  final double currentSliderValue;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.cardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            AppText.hight,
            style: TextStyle(fontSize: 22, color: AppColors.greyText),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${currentSliderValue.toInt()}',
                style: const TextStyle(
                    fontSize: 22,
                    color: AppColors.whiteText,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                AppText.cm,
                style: TextStyle(
                    fontSize: 15,
                    color: AppColors.greyText,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
            ),
          ),
          CupertinoSlider(
            max: 300,
            value: currentSliderValue,
            onChanged: onChanged,
            // (value) {
              //setState(() {
              // currentSliderValue = value;
              //}),
           // },
            activeColor: Colors.white,
            thumbColor: AppColors.buttoncolor,
          ),
        ],
      ),
    );
  }
}

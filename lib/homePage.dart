import 'package:bmi_ui/components/appText.dart';
import 'package:bmi_ui/components/appcolors.dart';
import 'package:bmi_ui/slider.dart';
import 'package:bmi_ui/status_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/calculate.dart';
import 'components/statusCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double currentSliderValue = 180.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: const [
                  statusCard(
                    icon: Icons.male,
                    text: AppText.male,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  statusCard(
                    icon: Icons.female,
                    text: AppText.female,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: SliderWidget(
                currentSliderValue: currentSliderValue,
                onChanged: (value) {
                  setState(() {
                    value;
                  });
                },
              ),
            ),
            const statusCard2(
              name: AppText.weight,
              number: 60,
            ),
            const SizedBox(
              width: 20,
            ),
            const statusCard2(name: AppText.age, number: 28),
          ],
        ),
      ),
      bottomNavigationBar: const Calculatebuttom(),
    );
  }
}

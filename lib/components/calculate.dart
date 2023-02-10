import 'dart:developer';

import 'package:bmi_ui/components/appcolors.dart';
import 'package:flutter/material.dart';

class Calculatebuttom extends StatelessWidget {
  const Calculatebuttom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('pressed');
      },
      child: Container(
        width: double.infinity,
        height: 70,
        color: AppColors.buttoncolor,
        child: const Center(
          child: Text(
            'CALCULATE',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

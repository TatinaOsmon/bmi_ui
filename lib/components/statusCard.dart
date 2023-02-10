import 'package:flutter/material.dart';

import 'appcolors.dart';

class statusCard extends StatelessWidget {
  const statusCard({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: AppColors.cardColor,
        child: (Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 80,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 24,
                color: AppColors.greyText,
              ),
            ),
          ],
        )),
      ),
    );
  }
}

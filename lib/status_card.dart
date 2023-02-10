import 'package:flutter/material.dart';

import 'components/appText.dart';
import 'components/appcolors.dart';

class statusCard2 extends StatelessWidget {
  const statusCard2({
    required this.name,
    required this.number,
    Key? key,
  }) : super(key: key);
  final String name;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Card(
            color: AppColors.cardColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      color: AppColors.greyText, fontWeight: FontWeight.bold),
                ),
                Text(
                  '$number',
                  style: const TextStyle(
                      color: AppColors.whiteText,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    FloatingActionButton(
                      backgroundColor: AppColors.button2Colr,
                      onPressed: () {},
                      child: const Icon(
                        Icons.remove,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    FloatingActionButton(
                      backgroundColor: AppColors.button2Colr,
                      onPressed: () {},
                      child: const Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 60,
          ),
          Card(
            color: AppColors.cardColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  AppText.weight,
                  style: TextStyle(
                      color: AppColors.greyText, fontWeight: FontWeight.bold),
                ),
                const Text(
                  '60',
                  style: TextStyle(
                      color: AppColors.whiteText,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    FloatingActionButton(
                      backgroundColor: AppColors.button2Colr,
                      onPressed: () {},
                      child: const Icon(
                        Icons.remove,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    FloatingActionButton(
                      backgroundColor: AppColors.button2Colr,
                      onPressed: () {},
                      child: const Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

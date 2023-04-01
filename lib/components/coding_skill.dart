import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio/domain/constants.dart' as constants;

class CodingSkill extends StatelessWidget {
  final String skillName;
  final double percentage;
  final String codingIconPath;

  const CodingSkill(
      {super.key,
      required this.skillName,
      required this.percentage,
      required this.codingIconPath});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: percentage),
      duration: constants.defaultDuration,
      builder: (context, double value, child) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      codingIconPath,
                      width: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      skillName,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Text(
                  '${(value * 100).toInt()}%',
                  style: Theme.of(context).textTheme.titleSmall,
                )
              ],
            ),
            SizedBox(
              height: constants.defaultPadding / 2,
            ),
            LinearProgressIndicator(
              value: value,
              color: constants.primaryColor,
              backgroundColor: constants.darkColor,
            ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio/domain/constants.dart' as constants;
import 'package:flutter_svg/flutter_svg.dart';

class LanguageSkill extends StatelessWidget {
  final String languageName;
  final double percentage;
  final String countryFlagPath;

  const LanguageSkill(
      {super.key,
      required this.languageName,
      required this.percentage,
      required this.countryFlagPath});

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
                    SvgPicture.asset(
                      countryFlagPath,
                      width: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      languageName,
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

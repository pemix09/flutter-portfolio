import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/domain/constants.dart' as constants;

class SkillCircle extends StatelessWidget {
  final double percentage;
  final String skillName;

  const SkillCircle({
    super.key,
    required this.percentage,
    required this.skillName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(
              begin: 0,
              end: percentage,
            ),
            duration: constants.defaultDuration,
            builder: (context, double value, child) =>
                Stack(fit: StackFit.expand, children: [
              CircularProgressIndicator(
                value: value,
                color: constants.primaryColor,
                backgroundColor: constants.darkColor,
              ),
              Center(
                child: Text(
                  '${(value * 100).toInt()}%',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              )
            ]),
          ),
        ),
        SizedBox(
          height: constants.defaultPadding / 2,
        ),
        Text(
          skillName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}

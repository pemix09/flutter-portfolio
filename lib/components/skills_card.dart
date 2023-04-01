import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/components/skill_circle.dart';
import 'package:portfolio/domain/constants.dart' as constants;

class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: constants.defaultPadding),
          child: Text(
            "skills",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Row(
          children: const [
            Expanded(
              child: SkillCircle(
                percentage: 0.9,
                skillName: ".NET",
              ),
            ),
            SizedBox(
              width: constants.defaultPadding,
            ),
            Expanded(
              child: SkillCircle(
                percentage: 0.6,
                skillName: "Flutter",
              ),
            ),
            SizedBox(
              width: constants.defaultPadding,
            ),
            Expanded(
              child: SkillCircle(
                percentage: 0.8,
                skillName: "Microsoft CRM",
              ),
            ),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio/domain/constants.dart' as constants;
import 'coding_skill.dart';

class CodingCard extends StatelessWidget {
  const CodingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: constants.defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Column(
          children: const [
            CodingSkill(
              codingIconPath: "assets/icons/c#.png",
              skillName: "C#",
              percentage: 0.84,
            ),
            SizedBox(
              height: constants.defaultPadding / 2,
            ),
            CodingSkill(
              codingIconPath: "assets/icons/typeScript.png",
              skillName: "TypeScript",
              percentage: 0.68,
            ),
            SizedBox(
              height: constants.defaultPadding / 2,
            ),
            CodingSkill(
              codingIconPath: "assets/icons/flutter.png",
              skillName: "Flutter",
              percentage: 0.61,
            ),
            SizedBox(
              height: constants.defaultPadding / 2,
            ),
            CodingSkill(
              codingIconPath: "assets/icons/html.png",
              skillName: "HTML",
              percentage: 0.55,
            ),
            SizedBox(
              height: constants.defaultPadding / 2,
            ),
            CodingSkill(
              codingIconPath: "assets/icons/kotlin.png",
              skillName: "Kotlin",
              percentage: 0.67,
            )
          ],
        )
      ],
    );
  }
}

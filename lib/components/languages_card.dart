import 'package:flutter/material.dart';
import 'package:portfolio/domain/constants.dart' as constants;
import 'package:flutter_svg/flutter_svg.dart';
import 'language_skill.dart';

class LanguagesCard extends StatelessWidget {
  const LanguagesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: constants.defaultPadding),
          child: Text(
            "Languages",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Column(
          children: [
            LanguageSkill(
              countryFlagPath: 'assets/flags/pl.svg',
              languageName: "Polish",
              percentage: 1,
            ),
            SizedBox(
              height: constants.defaultPadding / 2,
            ),
            LanguageSkill(
              countryFlagPath: 'assets/flags/gb.svg',
              languageName: "English",
              percentage: 0.95,
            ),
            SizedBox(
              height: constants.defaultPadding / 2,
            ),
            LanguageSkill(
              countryFlagPath: 'assets/flags/es.svg',
              languageName: "Spanish",
              percentage: 0.7,
            ),
            SizedBox(
              height: constants.defaultPadding / 2,
            ),
          ],
        )
      ],
    );
  }
}

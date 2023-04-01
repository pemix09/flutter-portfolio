import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio/components/languages_card.dart';
import 'package:portfolio/components/skills_card.dart';
import 'package:portfolio/components/text_info.dart';
import 'package:portfolio/components/user_card.dart';
import 'package:portfolio/domain/constants.dart' as constants;
import 'package:flutter_svg/flutter_svg.dart';
import 'coding_card.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const AspectRatio(
            aspectRatio: 1.23,
            child: UserCard(),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(constants.defaultPadding),
              child: Column(
                children: [
                  TextInfo(
                    title: "Residence",
                    value: "Poland",
                  ),
                  TextInfo(
                    title: "City",
                    value: "Białystok",
                  ),
                  TextInfo(
                    title: "Age",
                    value: "23",
                  ),
                  Divider(),
                  SkillsCard(),
                  Divider(),
                  SizedBox(
                    height: constants.defaultPadding,
                  ),
                  CodingCard(),
                  Divider(),
                  LanguagesCard(),
                  Divider(),
                  TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "Download CV",
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.color),
                          ),
                          SizedBox(
                            width: constants.defaultPadding / 2,
                          ),
                          SvgPicture.asset("assets/icons/download.svg")
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: constants.defaultPadding / 2),
                    color: Color(0xFF24242E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/github.svg"),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/twitter.svg"),
                        ),
                        Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

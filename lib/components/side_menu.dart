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
import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'dart:html';

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
                  Container(
                    margin: const EdgeInsets.only(
                        top: constants.defaultPadding / 2),
                    color: const Color(0xFF24242E),
                    child: Row(
                      children: [
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            var uri = Uri.https("linkedin.com",
                                "/in/przemysław-klejno-233b59178/");
                            canLaunchUrl(uri).then((bool canLaunch) => canLaunch
                                ? launchUrl(uri)
                                : print("Cannot open linkedin"));
                          },
                          icon: SvgPicture.asset(
                            "assets/icons/linkedin.svg",
                            color: Colors.white,
                            width: constants.defaultPadding,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            var uri = Uri.https("github.com", "/pemix09");
                            canLaunchUrl(uri).then(
                              (bool canLaunch) => canLaunch
                                  ? launchUrl(uri)
                                  : print("Cannot open github"),
                            );
                          },
                          icon: SvgPicture.asset(
                            "assets/icons/github.svg",
                            color: Colors.white,
                            width: constants.defaultPadding,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            var uri =
                                Uri.https("facebook.com", "/przemek.kl.90");
                            canLaunchUrl(uri).then(
                              (bool canLaunch) => canLaunch
                                  ? launchUrl(uri)
                                  : print("Cannot open facebook"),
                            );
                          },
                          icon: SvgPicture.asset(
                            "assets/icons/facebook.svg",
                            color: Colors.white,
                            width: constants.defaultPadding,
                          ),
                        ),
                        const Spacer(),
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

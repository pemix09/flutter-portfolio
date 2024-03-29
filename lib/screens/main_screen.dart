import 'package:flutter/material.dart';
import 'package:portfolio/domain/constants.dart' as constants;
import 'package:portfolio/screens/about_page.dart';
import '../components/nav_bar.dart';
import '../components/side_menu.dart';
import '../components/user_card.dart';
import 'contact_me_page.dart';
import 'experience_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Row(children: [
            Expanded(
              flex: 2,
              child: SideMenu(),
            ),
            Expanded(
              flex: 7,
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: NavBar(),
                  body: TabBarView(
                    children: [
                      AboutPage(),
                      ExperiencePage(),
                      ContactMePage(),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

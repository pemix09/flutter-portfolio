import 'package:flutter/material.dart';
import 'package:portfolio/domain/constants.dart' as constants;

class NavBar extends StatelessWidget with PreferredSizeWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: const TabBar(
        tabs: [
          Tab(
            text: "About me",
          ),
          Tab(
            text: "My experience",
          ),
          Tab(
            text: "Contact me",
          )
        ],
        indicatorColor: constants.primaryColor,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

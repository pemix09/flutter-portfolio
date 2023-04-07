import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/domain/constants.dart' as constants;
import 'package:portfolio/screens/about_page.dart';
import '../domain/states/active_page_provider.dart';

class NavBar extends ConsumerWidget with PreferredSizeWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activePageState = ref.read(activePageProvider.notifier);

    return AppBar(
      bottom: TabBar(
        onTap: (int value) =>
            activePageState.changeActivePage(value.toString()),
        tabs: const <Widget>[
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

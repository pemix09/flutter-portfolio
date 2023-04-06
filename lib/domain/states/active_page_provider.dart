import 'package:flutter_riverpod/flutter_riverpod.dart';

final activePageProvider = StateNotifierProvider((ref) => ActivePageState());

class ActivePageState extends StateNotifier<String> {
  ActivePageState() : super("Przemysław Klejno prortfolio");

  void changeActivePage(String activePage) => state = activePage;
}

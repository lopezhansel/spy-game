import 'package:flutter/material.dart';

enum Pages {
  HOME,
  CREATE_GAME_SCREEN,
  JOIN_GAME_SCREEN,
  PRE_GAME_SCREEN,
  INVITATION_SCREEN,
  ONGOING_GAME_SCREEN,
}

class Navigate extends InheritedWidget {
  final Function goToPage;

  Navigate({this.goToPage, child}) : super(child: child);

  navigateTo(Pages page) {
    goToPage(page);
  }

  static Navigate of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(Navigate);

  @override
  bool updateShouldNotify(Navigate old) => false;
}

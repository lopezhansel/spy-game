import 'package:flutter/material.dart';
import 'package:hello_world/Shared/ActionBar.dart';
import 'package:hello_world/Shared/BorderContainer.dart';
import 'package:hello_world/Shared/Navigate.dart';
import 'package:hello_world/Shared/SpyfallPage.dart';
import 'package:hello_world/Shared/TopHeader.dart';

class OngoingGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title = "7:39";
    Navigate navigate = Navigate.of(context);

    final List<MenuItem> menuItems = [
      MenuItem("End Game", () => navigate.goToPage(Pages.PRE_GAME_SCREEN)),
      MenuItem("Leave Game", () => navigate.goToPage(Pages.HOME_SCREEN)),
    ];

    return SpyfallPage(
      child: Column(
        children: <Widget>[
          TopHeader(title),
          BorderContainer(
            child: ActionBar(menuItems),
          ),
        ],
      ),
    );
  }
}

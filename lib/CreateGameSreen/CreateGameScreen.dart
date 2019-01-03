import 'package:flutter/material.dart';
import 'package:hello_world/Shared/Navigate.dart';
import 'package:hello_world/Shared/SpyfallPage.dart';
import 'package:hello_world/Shared/ActionBar.dart';
import 'package:hello_world/Shared/TopHeader.dart';
import 'package:hello_world/Shared/BorderContainer.dart';

class CreateGameScreen extends StatelessWidget {
  final String title = "Create A New Game";

  @override
  Widget build(BuildContext context) {
    Navigate navigate = Navigate.of(context);

    final List<MenuItem> menuItems = [
      MenuItem("Create", () => navigate.goToPage(Pages.PRE_GAME_SCREEN)),
      MenuItem("Go Back", () => navigate.goToPage(Pages.HOME_SCREEN)),
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

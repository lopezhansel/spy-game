import 'package:flutter/material.dart';
import 'package:hello_world/Shared/Navigate.dart';
import 'package:hello_world/Shared/SpyfallPage.dart';
import 'package:hello_world/Shared/BorderContainer.dart';
import 'package:hello_world/Shared/ActionBar.dart';

class HomeScreen extends StatelessWidget {
  final String title = "Spyfall";

  @override
  Widget build(BuildContext context) {
    Navigate navigate = Navigate.of(context);

    final List<MenuItem> menuItems = [
      MenuItem("New Game", () => navigate.goToPage(Pages.CREATE_GAME_SCREEN)),
      MenuItem("Join Game", () => navigate.goToPage(Pages.JOIN_GAME_SCREEN)),
    ];

    return SpyfallPage(
      title: title,
      child: Column(
        children: <Widget>[
          BorderContainer(
            child: ActionBar(menuItems),
          ),
        ],
      ),
    );
  }
}

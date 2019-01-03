import 'package:flutter/material.dart';
import 'package:hello_world/Shared/Navigate.dart';
import 'package:hello_world/Shared/SpyfallPage.dart';
import 'package:hello_world/Shared/ActionBar.dart';
import 'package:hello_world/Shared/TopHeader.dart';
import 'package:hello_world/Shared/BorderContainer.dart';

class WaitScreen extends StatelessWidget {
  final String title = "Waiting for other players..";
  final String accessCode = "abc123";
  final Function onMenuItemPressed;

  WaitScreen({this.onMenuItemPressed});

  @override
  Widget build(BuildContext context) {
    Navigate navigate = Navigate.of(context);

    final List<MenuItem> menuItems = [
      MenuItem(
          "Start Game", () => navigate.goToPage(Pages.ONGOING_GAME_SCREEN)),
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

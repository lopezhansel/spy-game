import 'package:flutter/material.dart';
import 'package:hello_world/Shared/Navigate.dart';
import 'package:hello_world/Shared/SpyfallPage.dart';
import 'package:hello_world/Shared/InputField.dart';
import 'package:hello_world/Shared/TopHeader.dart';
import 'package:hello_world/Shared/BorderContainer.dart';
import 'package:hello_world/Shared/ActionBar.dart';

class JoinGameScreen extends StatelessWidget {
  final String title = "Join a Game";

  @override
  Widget build(BuildContext context) {
    Navigate navigate = Navigate.of(context);

    final List<MenuItem> menuItems = [
      MenuItem("Join Game", () => navigate.goToPage(Pages.CREATE_GAME_SCREEN)),
      MenuItem("Go Back", () => navigate.goToPage(Pages.HOME_SCREEN)),
    ];

    return SpyfallPage(
      child: Column(
        children: <Widget>[
          TopHeader(title),
          InputField(placeHolder: 'Enter Access Code'),
          InputField(placeHolder: 'Enter Your Name'),
          BorderContainer(
            child: ActionBar(menuItems),
          ),
        ],
      ),
    );
  }
}

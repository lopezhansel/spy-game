import 'package:flutter/material.dart';
import 'package:hello_world/Shared/Dividers.dart';
import 'package:hello_world/Shared/Navigate.dart';
import 'package:hello_world/Shared/SpyfallPage.dart';
import 'package:hello_world/Shared/InputField.dart';
import 'package:hello_world/Shared/BorderContainer.dart';
import 'package:hello_world/Shared/ActionBar.dart';

class JoinGameScreen extends StatelessWidget {
  final String title = "Join Game";

  @override
  Widget build(BuildContext context) {
    Navigate navigate = Navigate.of(context);

    final List<MenuItem> menuItems = [
      MenuItem("Join Game", () => navigate.goToPage(Pages.CREATE_GAME_SCREEN)),
      MenuItem("Go Back", () => navigate.goToPage(Pages.HOME_SCREEN)),
    ];

    return SpyfallPage(
      title: title,
      child: Column(
        children: <Widget>[
          SectionDivider('Game Info'),
          InputField(placeHolder: 'Enter Access Code'),
          InputField(placeHolder: 'Enter Your Name'),
          SectionDivider('Actions'),
          BorderContainer(
            child: ActionBar(menuItems),
          ),
        ],
      ),
    );
  }
}

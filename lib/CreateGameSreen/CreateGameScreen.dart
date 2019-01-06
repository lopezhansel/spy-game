import 'package:flutter/material.dart';
import 'package:hello_world/CreateGameSreen/GameOptions.dart';
import 'package:hello_world/CreateGameSreen/InviteWidget.dart';
import 'package:hello_world/CreateGameSreen/PlayerList.dart';
import 'package:hello_world/Shared/BorderContainer.dart';
import 'package:hello_world/Shared/Navigate.dart';
import 'package:hello_world/Shared/SpyfallPage.dart';
import 'package:hello_world/Shared/ActionBar.dart';
import 'package:hello_world/Shared/TopHeader.dart';
import 'package:hello_world/Shared/Dividers.dart';

class CreateGameScreen extends StatelessWidget {
  final String title = "Create A New Game";
  final String accessCode = "abc123";

  @override
  Widget build(BuildContext context) {
    Navigate navigate = Navigate.of(context);
    Function startGame = () => navigate.goToPage(Pages.ONGOING_GAME_SCREEN);
    Function goHomeScreen = () => navigate.goToPage(Pages.HOME_SCREEN);

    List<MenuItem> menuItems = [
      MenuItem("Start Game", startGame),
      MenuItem("Cancel", goHomeScreen),
    ];
    final List<Player> players = [
      Player("Alpha"),
      Player("Beta"),
      Player("Charlie"),
      Player("Delta"),
      Player("Echo"),
    ];

    return SpyfallPage(
      child: Column(
        children: <Widget>[
          TopHeader(title),
          InviteWidget(accessCode: accessCode),
          SectionDivider("Players"),
          PlayerList(players),
          SectionDivider("Game Options"),
          GameOptions(menuItems: menuItems),
          SectionDivider("Actions"),
          BorderContainer(
            child: ActionBar(menuItems),
          ),
        ],
      ),
    );
  }
}

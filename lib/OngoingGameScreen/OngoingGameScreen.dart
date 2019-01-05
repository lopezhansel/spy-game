import 'package:flutter/material.dart';
import 'package:hello_world/Shared/ActionBar.dart';
import 'package:hello_world/Shared/BorderContainer.dart';
import 'package:hello_world/Shared/Navigate.dart';
import 'package:hello_world/Shared/SpyfallPage.dart';
import 'package:hello_world/OngoingGameScreen/CharacterInfo.dart';
import 'package:hello_world/OngoingGameScreen/Countdown.dart';
import 'package:hello_world/OngoingGameScreen/LocationsReference.dart';
import 'package:hello_world/OngoingGameScreen/PlayersActive.dart';

class OngoingGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Navigate navigate = Navigate.of(context);

    final List<MenuItem> menuItems = [
      MenuItem("End Game", () => navigate.goToPage(Pages.CREATE_GAME_SCREEN)),
      MenuItem("Leave Game", () => navigate.goToPage(Pages.HOME_SCREEN)),
    ];

    return SpyfallPage(
      child: Column(
        children: <Widget>[
          Countdown(),
          CharacterInfo(),
          PlayersActive(),
          LocationsReference(),
          BorderContainer(
            child: ActionBar(menuItems),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hello_world/Shared/Styles.dart';

class Player {
  static int count = 1;
  int id;
  String name;

  Player(this.name) {
    this.id = Player.count++;
  }
}

class PlayerList extends StatelessWidget {
  final List<Player> players;

  PlayerList(this.players);

  final Widget waiting = Text(
    'Waiting for players to join..',
    style: TextStyle(
      color: MyColors.clouds,
      fontSize: 16,
      fontStyle: FontStyle.italic,
      fontFamily: "Raleway",
    ),
  );

  Chip playerToChip(Player player) {
    return Chip(
      label: Text(player.name),
      avatar: CircleAvatar(
        backgroundColor: MyColors.emerald,
        child: Text(
          player.name.substring(0, 1).toUpperCase(),
          style: TextStyle(color: MyColors.midNightBlue),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool hasPlayers = players.length > 0;
    Widget playersList = Padding(
        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          spacing: 5.0,
          children: players.map(playerToChip).toList(),
        ));
    return Container(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: hasPlayers ? playersList : waiting,
    );
  }
}

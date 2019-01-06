import 'package:flutter/material.dart';
import 'package:hello_world/Shared/BorderContainer.dart';

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

  final Widget waiting = Text('Waiting for players to join..',
      style: TextStyle(
        color: Colors.grey[200],
        fontSize: 16,
        fontStyle: FontStyle.italic,
        fontFamily: "Raleway",
      ));

  Chip playerToChip(Player player) {
    return Chip(
      label: Text(player.name),
      avatar: CircleAvatar(
        backgroundColor: Colors.greenAccent,
        child: Text(
          player.name.substring(0, 1).toUpperCase(),
          style: TextStyle(color: Color(0xff34495e)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool hasPlayers = players.length > 0;
    Widget playersList = Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          spacing: 5.0,
          children: players.map(playerToChip).toList(),
        ));
    return BorderContainer.top(
      child: hasPlayers ? playersList : waiting,
    );
  }
}

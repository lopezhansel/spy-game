import 'package:flutter/material.dart';
import 'package:hello_world/Shared/BorderContainer.dart';

class PlayerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BorderContainer.top(
      child: Text(
        'Waiting for players to join..',
        style: TextStyle(
          color: Colors.grey[200],
          fontSize: 16,
          fontStyle: FontStyle.italic,
          fontFamily: "Raleway",
        ),
      ),
    );
  }
}

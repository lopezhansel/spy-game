import 'package:flutter/material.dart';
import 'package:hello_world/Shared/BorderContainer.dart';

class PlayerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BorderContainer.top(
      child: Text('Player List, Waiting for player'),
    );
  }
}

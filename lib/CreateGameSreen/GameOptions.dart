import 'package:flutter/material.dart';
import 'package:hello_world/Shared/ActionBar.dart';
import 'package:hello_world/Shared/BorderContainer.dart';
import 'package:hello_world/Shared/InputField.dart';

class GameOptions extends StatelessWidget {
  final List<MenuItem> menuItems;

  GameOptions({this.menuItems});

  @override
  Widget build(BuildContext context) {
    return BorderContainer(
      child: Column(
        children: <Widget>[
          InputField(
            placeHolder: "Choose you username",
          ),
          InputField(
            placeHolder: 'Time length of Game',
          ),
          InputField(
            placeHolder: 'Select Location',
          ),
          ActionBar(menuItems),
        ],
      ),
    );
  }
}

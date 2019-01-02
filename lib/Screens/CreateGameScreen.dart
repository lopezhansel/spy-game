import 'package:flutter/material.dart';
import '../Shared/ButtonRow.dart';
import '../Shared/TopHeader.dart';
import '../Shared/BorderContainer.dart';

class NewGamePage extends StatelessWidget {
  final String title = "Start Game";
  final Function onMenuItemPressed;
  final menuItems = ["Create Game", "Go Back"];

  NewGamePage({this.onMenuItemPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          TopHeader(title),
          BorderContainer(
            child: ButtonRow(
              menuItems: menuItems,
              onButtonPress: onMenuItemPressed,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../Shared/InputField.dart';
import '../Shared/TopHeader.dart';
import '../Shared/BorderContainer.dart';
import '../Shared/ButtonRow.dart';

class JoinGamePage extends StatelessWidget {
  final String title = "Join a Game";
  final Function onMenuItemPressed;
  final List<String> menuItems = ["Join Game", "Go Back"];

  JoinGamePage({this.onMenuItemPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.0, 0.0),
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TopHeader(title),
          BorderContainer(
            child: Column(
              children: <Widget>[
                InputField(
                  placeHolder: 'Enter Access Code',
                  onMenuItemPressed: onMenuItemPressed,
                ),
                InputField(
                  placeHolder: 'Enter Your Name',
                  onMenuItemPressed: onMenuItemPressed,
                ),
                ButtonRow(
                  menuItems: menuItems,
                  onButtonPress: onMenuItemPressed,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

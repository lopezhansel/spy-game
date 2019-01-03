import 'package:flutter/material.dart';
import '../Shared/SpyfallPage.dart';
import '../Shared/InputField.dart';
import '../Shared/TopHeader.dart';
import '../Shared/BorderContainer.dart';
import '../Shared/ActionBar.dart';

class JoinGameScreen extends StatelessWidget {
  final String title = "Join a Game";
  final Function onMenuItemPressed;
  final List<String> menuItems = ["Join Game", "Go Back"];

  JoinGameScreen({this.onMenuItemPressed});

  @override
  Widget build(BuildContext context) {
    return SpyfallPage(
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
                ActionBar(
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

import 'package:flutter/material.dart';
import '../Shared/MenuButton.dart';
import '../Shared/InputField.dart';
import '../Shared/TopHeader.dart';

class JoinGamePage extends StatelessWidget {
  final String title = "Join a Game";
  final Function onMenuItemPressed;

  JoinGamePage({this.onMenuItemPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          TopHeader(title),
          InputField(
            placeHolder: 'Enter Access Code',
            onMenuItemPressed: onMenuItemPressed,
          ),
          InputField(
            placeHolder: 'Enter Your Name',
            onMenuItemPressed: onMenuItemPressed,
          ),
          MenuButton(
            name: 'Go Back',
            onMenuItemPressed: onMenuItemPressed,
          )
        ],
      ),
    );
  }
}

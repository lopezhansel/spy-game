import 'package:flutter/material.dart';
import './Shared/MenuButton.dart';
import './Shared/InputField.dart';

class JoinGamePage extends StatelessWidget {
  static String title = "Join a Game";

  final Function onMenuItemPressed;

  JoinGamePage({this.onMenuItemPressed});

  final Container welcomeCmp = Container(
    height: 40,
    child: Text(
      title,
      style: TextStyle(
        color: Colors.grey[600],
        fontSize: 23,
        fontFamily: "Raleway",
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          welcomeCmp,
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

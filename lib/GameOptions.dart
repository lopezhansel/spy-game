import 'package:flutter/material.dart';
import './MenuButton.dart';

class GameOptions extends StatelessWidget {
  static String title = "Start Game";

  Function onMenuItemPressed;

  GameOptions({this.onMenuItemPressed});

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
          MenuButton(
            name: 'Go Back',
            onMenuItemPressed: onMenuItemPressed,
          )
        ],
      ),
    );
  }
}

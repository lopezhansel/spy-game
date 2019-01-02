import 'package:flutter/material.dart';
import '../Shared/MenuButton.dart';
import '../Shared/TopHeader.dart';

class NewGamePage extends StatelessWidget {
  final String title = "Start Game";
  final Function onMenuItemPressed;

  NewGamePage({this.onMenuItemPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          TopHeader(title),
          MenuButton(
            name: 'Go Back',
            onMenuItemPressed: onMenuItemPressed,
          )
        ],
      ),
    );
  }
}

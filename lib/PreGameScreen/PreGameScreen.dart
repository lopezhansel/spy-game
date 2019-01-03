import 'package:flutter/material.dart';
import '../Shared/SpyfallPage.dart';
import '../Shared/ActionBar.dart';
import '../Shared/TopHeader.dart';
import '../Shared/BorderContainer.dart';

class WaitScreen extends StatelessWidget {
  final String title = "Waiting for other players..";
  final String accessCode = "abc123";
  final Function onMenuItemPressed;
  final menuItems = ["Start Game", "Leave Game"];

  WaitScreen({this.onMenuItemPressed});

  @override
  Widget build(BuildContext context) {
    return SpyfallPage(
      child: Column(
        children: <Widget>[
          TopHeader(title),
          BorderContainer(
            child: ActionBar(
              menuItems: menuItems,
              onButtonPress: onMenuItemPressed,
            ),
          ),
        ],
      ),
    );
  }
}

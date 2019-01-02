import 'package:flutter/material.dart';
import '../Shared/TopHeader.dart';
import '../Shared/BorderContainer.dart';
import '../Shared/ButtonRow.dart';

class HomePage extends StatelessWidget {
  final String title = "Welcome to Spyfall";
  final List<String> menuItems = ["New Game", "Join Game"];
  final Function onMenuPress;

  HomePage({this.onMenuPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TopHeader(title),
          BorderContainer(
            child: ButtonRow(
              menuItems: menuItems,
              onButtonPress: onMenuPress,
            ),
          ),
        ],
      ),
    );
  }
}

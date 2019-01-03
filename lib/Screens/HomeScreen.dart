import 'package:flutter/material.dart';
import '../Shared/TopHeader.dart';
import '../Shared/BorderContainer.dart';
import '../Shared/ActionBar.dart';

class HomeScreen extends StatelessWidget {
  final String title = "Welcome to Spyfall";
  final List<String> menuItems = ["New Game", "Join Game"];
  final Function onMenuPress;

  HomeScreen({this.onMenuPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TopHeader(title),
          BorderContainer(
            child: ActionBar(
              menuItems: menuItems,
              onButtonPress: onMenuPress,
            ),
          ),
        ],
      ),
    );
  }
}

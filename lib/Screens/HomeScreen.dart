import 'package:flutter/material.dart';
import '../Shared/MenuButton.dart';
import '../Shared/TopHeader.dart';
import '../Shared/BorderContainer.dart';

class HomePage extends StatelessWidget {
  final String title = "Welcome to Spyfall";
  final _menuItems = ["New Game", "Join Game"];
  final Function onMenuPress;

  HomePage({this.onMenuPress});

  Widget get menuItems {
    var menu = _menuItems
        .map((name) => MenuButton(
              name: name,
              onMenuItemPressed: onMenuPress,
            ))
        .toList();

    return BorderContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: menu,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TopHeader(title),
          menuItems,
        ],
      ),
    );
  }
}

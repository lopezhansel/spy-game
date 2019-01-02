import 'package:flutter/material.dart';
import '../Shared/MenuButton.dart';
import '../Shared/TopHeader.dart';

class HomePage extends StatelessWidget {
  final String title = "Welcome to Spyfall";
  final  _menuItems = ["New Game", "Join Game"];
  final Function onMenuPress;

  HomePage({this.onMenuPress});

  Widget get menuItems {
    var menu = _menuItems
        .map((name) => MenuButton(
              name: name,
              onMenuItemPressed: onMenuPress,
            ))
        .toList();

    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: menu,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: Color(0xFFFF000000)),
          top: BorderSide(width: 0.5, color: Color(0xFFFF000000)),
        ),
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

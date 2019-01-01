import 'package:flutter/material.dart';
import './Shared/MenuButton.dart';

class HomePage extends StatelessWidget {
  static String title = "Welcome to Spyfall";

  Function onMenuPress;

  HomePage({this.onMenuPress});

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

  static const _menuItems = ["New Game", "Join Game"];

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
      // alignment: Alignment.center,

      child: Column(
        children: <Widget>[
          welcomeCmp,
          menuItems,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './MenuButton.dart';

class SpyFallHomePage extends StatelessWidget {
  static String title = "Welcome to Spyfall";

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

  static List<Widget> getMenuItems() {
    var menu = ["", "New Game", "Join Game", ""];

    List<Widget> some = menu
        .map((name) => name == ""
            ? Spacer()
            : MenuButton(
                name: name,
              ))
        .toList();

    return some.toList();
  }

  final Container menuWgt = Container(
    height: 100,
    child: Row(
      children: getMenuItems(),
    ),
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(width: 0.5, color: Color(0xFFFF000000)),
        top: BorderSide(width: 0.5, color: Color(0xFFFF000000)),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[welcomeCmp, menuWgt],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './MenuButton.dart';

class ButtonRow extends StatelessWidget {
  final List<String> menuItems;
  final Function onButtonPress;

  ButtonRow({this.menuItems, this.onButtonPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: menuItems
          .map((name) => MenuButton(
                name: name,
                onMenuItemPressed: onButtonPress,
              ))
          .toList(),
    );
  }
}

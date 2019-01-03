import 'package:flutter/material.dart';
import 'package:hello_world/Shared/MenuButton.dart';

class MenuItem {
  Function action;
  String name;

  MenuItem(this.name, this.action);
}

class ActionBar extends StatelessWidget {
  final List<MenuItem> menuItems;

  ActionBar(this.menuItems);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: menuItems
          .map((item) => MenuButton(
                name: item.name,
                onMenuItemPressed: item.action,
              ))
          .toList(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hello_world/Shared/Styles.dart';

enum MenuButtonTypes {
  basic,
  hightlight,
}

class MenuButton extends StatefulWidget {
  final String name;
  final Function onMenuItemPressed;
  MenuButtonTypes type; // TODO:

  MenuButton({Key key, this.name, this.onMenuItemPressed}) : super(key: key);

  @override
  _MenuButton createState() =>
      _MenuButton(name: name, onMenuItemPressed: onMenuItemPressed);
}

class _MenuButton extends State<MenuButton> {
  String name = '';
  bool _highlight = false;

  Function onMenuItemPressed;

  _MenuButton({this.name, this.onMenuItemPressed});

  toggleHighlight() {
    setState(() => _highlight = !_highlight);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        toggleHighlight();
        const duration = Duration(milliseconds: 50);
        Future.delayed(duration, () {
          toggleHighlight();
          widget.onMenuItemPressed();
        });
      },
      child: Container(
        margin: EdgeInsets.all(5),
        width: 100,
        height: 50,
        child: Text(name),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: _highlight ? MyColors.silver : MyColors.clouds,
          borderRadius: BorderRadius.all(Radius.circular(3)),
        ),
      ),
    );
  }
}

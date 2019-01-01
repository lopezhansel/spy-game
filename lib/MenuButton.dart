import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {
  final String name;

  MenuButton({Key key, this.name}) : super(key: key);

  @override
  _MenuButton createState() => _MenuButton(name: name);
}

class _MenuButton extends State<MenuButton> {
  String name = '';
  bool _highlight = false;

  _MenuButton({this.name});

  toggleHighlight() {
    setState(() => _highlight = !_highlight);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        toggleHighlight();
        const duration = Duration(milliseconds: 100);
        Future.delayed(duration, toggleHighlight);
      },
      child: Container(
        margin: EdgeInsets.all(5),
        width: 100,
        height: 50,
        child: Text(name),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: _highlight ? Colors.grey : Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(3)),
          border: Border.all(width: 0.5, color: Color(0xFFFF000000)),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String placeHolder;
  final Function onMenuItemPressed;

  InputField({Key key, this.placeHolder, this.onMenuItemPressed}) : super(key: key);

  @override
  _InputFieldState createState() =>
      _InputFieldState(placeHolder: placeHolder, onMenuItemPressed: onMenuItemPressed);
}

class _InputFieldState extends State<InputField> {
  String placeHolder = '';
  bool _highlight = false;

  Function onMenuItemPressed;

  _InputFieldState({this.placeHolder, this.onMenuItemPressed});

  toggleHighlight() {
    setState(() => _highlight = !_highlight);
  }

  removeHightlight() {
    setState(() => _highlight = false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 200,
      height: 50,
      padding: EdgeInsets.all(5),
      child: Stack(
        children: <Widget>[
          TextField(
            maxLength: 6,
            textCapitalization: TextCapitalization.characters,
            autocorrect: false,
            onTap: toggleHighlight,
            onEditingComplete: removeHightlight,
            decoration: InputDecoration(
              counterText: '',
              hintText: placeHolder,
              border: InputBorder.none,
            ),
          ),
        ],
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        // color: _highlight ? Colors.grey : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(3)),
        border: Border.all(
            width: 0.5, color: _highlight ? Colors.blue : Colors.grey),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BorderContainer extends StatelessWidget {
  final Widget child;

  BorderContainer({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.0, 0.0),
      child: child,
      padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: Color(0xFFFF000000)),
          top: BorderSide(width: 0.5, color: Color(0xFFFF000000)),
        ),
      ),
    );
  }
}

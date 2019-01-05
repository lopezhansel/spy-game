import 'package:flutter/material.dart';

class SpyfallPage extends StatelessWidget {
  final Widget child;

  SpyfallPage({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff34495e),
      alignment: Alignment(0.0, 0.0),
      padding: EdgeInsets.all(20),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';

class BorderContainer extends StatelessWidget {
  final Widget child;
  final bool bottomBorder;
  final bool topBorder;

  BorderContainer(
      {this.child, this.topBorder = true, this.bottomBorder = true});
  BorderContainer.top(
      {this.child, this.bottomBorder = false, this.topBorder = true});
  BorderContainer.bottom(
      {this.child, this.bottomBorder = true, this.topBorder = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(0.0, 0.0),
      child: child,
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
      decoration: BoxDecoration(
        border: Border(
          bottom: bottomBorder
              ? BorderSide(width: 1.0, color: Color(0xFFEEEEEE))
              : BorderSide.none,
          top: topBorder
              ? BorderSide(width: 1.0, color: Color(0xFFEEEEEE))
              : BorderSide.none,
        ),
      ),
    );
  }
}

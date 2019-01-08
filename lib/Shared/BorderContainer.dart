import 'package:flutter/material.dart';
import 'package:hello_world/Shared/Styles.dart';

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
        color: MyColors.midNightBlue,
        border: Border(
          right: bottomBorder
              ? BorderSide(width: 2.0, color: MyColors.emerald)
              : BorderSide.none,
          left: topBorder
              ? BorderSide(width: 2.0, color: MyColors.emerald)
              : BorderSide.none,
        ),
      ),
    );
  }
}

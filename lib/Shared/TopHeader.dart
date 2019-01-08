import 'package:flutter/material.dart';
import 'package:hello_world/Shared/Styles.dart';

class TopHeader extends StatelessWidget {
  final String title;

  final EdgeInsets margin;

  TopHeader(this.title, {this.margin = const EdgeInsets.fromLTRB(0, 0, 0, 25)});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: MyColors.clouds),
      alignment: Alignment(0.0, 0.0),
      padding: EdgeInsets.all(5),
      margin: margin,
      child: Text(
        title,
        style: TextStyle(
          color: MyColors.midNightBlue,
          fontSize: 30,
          fontFamily: "Monospace",
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}

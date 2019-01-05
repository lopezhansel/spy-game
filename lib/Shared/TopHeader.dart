import 'package:flutter/material.dart';

class TopHeader extends StatelessWidget {
  final String title;

  TopHeader(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.grey[200],
          fontSize: 30,
          fontFamily: "Raleway",
        ),
      ),
    );
  }
}

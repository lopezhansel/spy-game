import 'package:flutter/material.dart';

class TopHeader extends StatelessWidget {
  final String title;

  TopHeader(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 23,
          fontFamily: "Raleway",
        ),
      ),
    );
  }
}

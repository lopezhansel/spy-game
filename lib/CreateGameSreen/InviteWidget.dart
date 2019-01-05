import 'package:flutter/material.dart';

class InviteWidget extends StatelessWidget {
  final String accessCode;

  InviteWidget({this.accessCode});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Invite Code: ",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 20,
              fontFamily: "Raleway",
            ),
          ),
          Text(
            "$accessCode",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 20,
              fontFamily: "Monospace",
            ),
          ),
        ],
      ),
    );
  }
}

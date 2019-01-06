import 'package:flutter/material.dart';
import 'package:hello_world/Shared/Styles.dart';

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
              color: MyColors.clouds,
              fontSize: 20,
              fontFamily: "Raleway",
            ),
          ),
          Text(
            "$accessCode",
            style: TextStyle(
              color: MyColors.emerald,
              fontSize: 20,
              fontFamily: "Monospace",
            ),
          ),
        ],
      ),
    );
  }
}

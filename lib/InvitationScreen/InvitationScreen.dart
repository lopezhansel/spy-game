import 'package:flutter/material.dart';
import 'package:hello_world/Shared/SpyfallPage.dart';

class InvitationScreen extends StatelessWidget {
  String title = "Invite";
  @override
  Widget build(BuildContext context) {
    return SpyfallPage(
      title: title,
      child: Text('Invitation Screen'),
    );
  }
}

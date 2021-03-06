import 'package:flutter/material.dart';
import 'package:hello_world/HomeScreen/HomeScreen.dart';
import 'package:hello_world/CreateGameSreen/CreateGameScreen.dart';
import 'package:hello_world/JoinGameScreen/JoinGameScreen.dart';
import 'package:hello_world/InvitationScreen/InvitationScreen.dart';
import 'package:hello_world/OngoingGameScreen/OngoingGameScreen.dart';
import 'package:hello_world/Shared/Navigate.dart';
import 'package:hello_world/Shared/Styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: MyColors.wetAsphalt,
        primaryColorDark: MyColors.wetAsphalt,
        primaryColorLight: MyColors.midNightBlue,
      ),
      home: Router(title: 'Spyfall'),
    );
  }
}

class Router extends StatefulWidget {
  final String title;

  Router({Key key, this.title}) : super(key: key);

  @override
  _RouterState createState() => _RouterState();
}

class _RouterState extends State<Router> {
  Pages currPage = Pages.HOME_SCREEN;

  Widget get currWidget {
    switch (currPage) {
      case Pages.HOME_SCREEN:
        return HomeScreen();
      case Pages.CREATE_GAME_SCREEN:
        return CreateGameScreen();
      case Pages.JOIN_GAME_SCREEN:
        return JoinGameScreen();
      case Pages.INVITATION_SCREEN:
        return InvitationScreen();
      case Pages.ONGOING_GAME_SCREEN:
        return OngoingGameScreen();
      default:
        return HomeScreen();
    }
  }

  void goToPage(Pages page) {
    setState(() => currPage = page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigate(
        goToPage: goToPage,
        child: currWidget,
      ),
    );
  }
}

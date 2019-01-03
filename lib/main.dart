import 'package:flutter/material.dart';
import './HomeScreen/HomeScreen.dart';
import './CreateGameSreen/CreateGameScreen.dart';
import './JoinGameScreen/JoinGameScreen.dart';
import './PreGameScreen/PreGameScreen.dart';
import './InvitationScreen/InvitationScreen.dart';
import './OngoingGameScreen/OngoingGameScreen.dart';
import './Shared/Navigate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
      case Pages.PRE_GAME_SCREEN:
        return WaitScreen();
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

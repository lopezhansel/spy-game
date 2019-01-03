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
  Pages _currPage = Pages.HOME;

  Widget get currPage {
    switch (_currPage) {
      case Pages.HOME:
        return HomeScreen(
          onMenuPress: this._goToPage,
        );
        break;
      case Pages.CREATE_GAME_SCREEN:
        return CreateGameScreen(onMenuItemPressed: this._goToPage);
        break;
      case Pages.JOIN_GAME_SCREEN:
        return JoinGameScreen(onMenuItemPressed: this._goToPage);
        break;
      case Pages.PRE_GAME_SCREEN:
        return WaitScreen(onMenuItemPressed: this._goToPage);
        break;
      case Pages.INVITATION_SCREEN:
        return InvitationScreen();
        break;
      case Pages.ONGOING_GAME_SCREEN:
        return OngoingGameScreen();
        break;
    }
  }

  Pages getPageEnum(String name) {
    switch (name) {
      case "Leave Game":
      case "Go Back":
        return Pages.HOME;
      case "Join Game":
        return Pages.JOIN_GAME_SCREEN;
      case "New Game":
        return Pages.CREATE_GAME_SCREEN;
      case "Start Game":
        return Pages.ONGOING_GAME_SCREEN;
      case "Create Game":
        return Pages.PRE_GAME_SCREEN;
      default:
        return Pages.HOME;
    }
  }

  void goToPage(Pages page) {
    setState(() => _currPage = page);
  }

  void _goToPage(String buttonName) {
    setState(() {
      _currPage = getPageEnum(buttonName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Navigate(
        goToPage: goToPage,
        child: currPage,
      ),
    );
  }
}

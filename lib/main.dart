import 'package:flutter/material.dart';
import './Screens/HomeScreen.dart';
import './Screens/CreateGameScreen.dart';
import './Screens/JoinGameScreen.dart';
import './Screens/WaitScreen.dart';

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

enum Pages {
  HOME,
  START_NEW_GAME,
  JOIN_GAME,
  WAIT_FOR_PLAYLERS,
}

class _RouterState extends State<Router> {
  Pages _currPage = Pages.HOME;

  Widget get currPage {
    switch (_currPage) {
      case Pages.HOME:
        return HomeScreen(
          onMenuPress: this.goToPage,
        );
        break;
      case Pages.START_NEW_GAME:
        return CreateGameScreen(onMenuItemPressed: this.goToPage);
        break;
      case Pages.JOIN_GAME:
        return JoinGameScreen(onMenuItemPressed: this.goToPage);
        break;
      case Pages.WAIT_FOR_PLAYLERS:
        return WaitScreen(onMenuItemPressed: this.goToPage);
        break;
    }
  }

  Pages getPageEnum(String name) {
    switch (name) {
      case "Leave Game":
      case "Go Back":
        return Pages.HOME;
        break;
      case "Join Game":
        return Pages.JOIN_GAME;
        break;
      case "New Game":
        return Pages.START_NEW_GAME;
        break;
      case "Create Game":
        return Pages.WAIT_FOR_PLAYLERS;
        break;
    }
    return Pages.HOME;
  }

  void goToPage(String buttonName) {
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
      body: currPage,
    );
  }
}

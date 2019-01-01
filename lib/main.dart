import 'package:flutter/material.dart';
import './HomePage.dart';
import './NewGamePage.dart';
import './JoinGamePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
}

class _RouterState extends State<Router> {
  Pages _currPage = Pages.HOME;

  Widget get currPage {
    switch (_currPage) {
      case Pages.HOME:
        return HomePage(
          onMenuPress: this.goToPage,
        );
        break;
      case Pages.START_NEW_GAME:
        return NewGamePage(onMenuItemPressed: this.goToPage);
        break;
      case Pages.JOIN_GAME:
        return JoinGamePage(onMenuItemPressed: this.goToPage);
        break;
    }
  }

  Pages getPageEnum(String name) {
    switch (name) {
      case "Go Back":
        return Pages.HOME;
        break;
      case "Join Game":
        return Pages.JOIN_GAME;
        break;
      case "New Game":
        return Pages.START_NEW_GAME;
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

import 'package:flutter/material.dart';
import './SpyFallHomePage.dart';
import './GameOptions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Spyfall'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum Pages {
    HOME,
    GAME_OPTIONS
} 

class _MyHomePageState extends State<MyHomePage> {
  Pages setPage = Pages.HOME;

  get currPage {
    switch(setPage){
      case Pages.HOME:
        return SpyFallHomePage();
      case Pages.GAME_OPTIONS:
        return GameOptions();
    }
  }

  goToGameOptions(){
    setPage = Pages.GAME_OPTIONS;
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


import 'package:flutter/material.dart';
import 'package:hello_world/CreateGameSreen/GameOptions.dart';
import 'package:hello_world/CreateGameSreen/InviteWidget.dart';
import 'package:hello_world/CreateGameSreen/PlayerList.dart';
import 'package:hello_world/Shared/BorderContainer.dart';
import 'package:hello_world/Shared/Navigate.dart';
import 'package:hello_world/Shared/SpyfallPage.dart';
import 'package:hello_world/Shared/ActionBar.dart';
import 'package:hello_world/Shared/Dividers.dart';
import 'package:hello_world/Shared/Styles.dart';

class TabbarPages extends StatefulWidget {
  final List<Widget> children;

  TabbarPages({this.children});
  @override
  State<StatefulWidget> createState() => _TabbarPagesState();
}

class _TabbarPagesState extends State<TabbarPages>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  static const _kTabs = <Tab>[
    Tab(text: 'Game'),
    Tab(text: 'Options'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: widget.children.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          isScrollable: false,
          tabs: _kTabs,
          controller: _tabController,
          indicatorColor: MyColors.emerald,
        ),
        Container(
          height: 500,
          child: TabBarView(
            children: widget.children,
            controller: _tabController,
          ),
        ),
      ],
    );
  }
}

class CreateGameScreen extends StatelessWidget {
  final String title = "Create Game";
  final String accessCode = "abc123";

  @override
  Widget build(BuildContext context) {
    Navigate navigate = Navigate.of(context);
    Function startGame = () => navigate.goToPage(Pages.ONGOING_GAME_SCREEN);
    Function goHomeScreen = () => navigate.goToPage(Pages.HOME_SCREEN);

    List<MenuItem> menuItems = [
      MenuItem("Start Game", startGame),
      MenuItem("Cancel", goHomeScreen),
    ];

    final List<Player> players = [
      Player("Alpha"),
      Player("Beta"),
      Player("Charlie"),
      Player("Delta"),
      Player("Echo"),
    ];

    Widget home = Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          InviteWidget(accessCode: accessCode),
          SectionDivider("Players"),
          PlayerList(players),
          SectionDivider("Actions"),
          BorderContainer(
            child: ActionBar(menuItems),
          ),
        ],
      ),
    );

    Widget config = Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          SectionDivider("Game Options"),
          GameOptions(menuItems: menuItems),
        ],
      ),
    );

    return SpyfallPage(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(0),
      title: title,
      child: Column(
        children: <Widget>[
          TabbarPages(
            children: <Widget>[home, config],
          ),
        ],
      ),
    );
  }
}

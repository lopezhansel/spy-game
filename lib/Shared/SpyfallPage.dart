import 'package:flutter/material.dart';
import 'package:hello_world/Shared/Styles.dart';
import 'package:hello_world/Shared/TopHeader.dart';

class SpyfallPage extends StatelessWidget {
  static EdgeInsets padding = EdgeInsets.all(20);
  final Widget child;
  final String title;

  SpyfallPage({this.child, this.title = ""});

  Widget get body {
    bool noTitle = title.length == 0;
    return noTitle
        ? child
        : Column(
            children: <Widget>[
              TopHeader(title),
              Container(
                alignment: Alignment(0.0, 0.0),
                padding: padding,
                child: child,
              ),
            ],
          );
  }

  @override
  Widget build(BuildContext context) {
    bool hasTitle = title.length > 0;

    return Container(
      padding: hasTitle ? EdgeInsets.all(0) : padding,
      color: MyColors.wetAsphalt,
      alignment: Alignment(0.0, 0.0),
      child: body,
    );
  }
}

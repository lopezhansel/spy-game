import 'package:flutter/material.dart';
import 'package:hello_world/Shared/Styles.dart';
import 'package:hello_world/Shared/TopHeader.dart';

class SpyfallPage extends StatelessWidget {
  final EdgeInsets padding;
  final Widget child;
  final String title;

  final EdgeInsets margin;

  SpyfallPage({
    this.child,
    this.title = "",
    this.padding = const EdgeInsets.all(20),
    this.margin = const EdgeInsets.fromLTRB(0, 0, 0, 25),
  });

  Widget get body {
    bool noTitle = title.length == 0;
    return noTitle
        ? child
        : Column(
            children: <Widget>[
              TopHeader(
                title,
                margin: margin,
              ),
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
    return Container(
      padding: padding,
      color: MyColors.wetAsphalt,
      alignment: Alignment(0.0, 0.0),
      child: body,
    );
  }
}

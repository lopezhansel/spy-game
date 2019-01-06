import 'package:flutter/material.dart';
import 'package:hello_world/Shared/Styles.dart';

class LineTitle extends StatelessWidget {
  final String title;

  LineTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(-1.0, 0.0),
      child: Text(
        title,
        style: TextStyle(
          color: MyColors.nephetis,
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          decoration: TextDecoration.none,
        ),
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: MyColors.clouds,
          ),
        ),
      ),
    );
  }
}

class LineDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.0, 0.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: MyColors.clouds,
          ),
        ),
      ),
    );
  }
}

class SectionDivider extends StatelessWidget {
  final String title;

  SectionDivider(this.title);

  Widget get _title {
    return Text(
      title,
      style: TextStyle(
        color: MyColors.nephetis,
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal,
        fontSize: 20,
        decoration: TextDecoration.none,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool hasTitle = title.length > 0;
    return Container(
      alignment: Alignment(0.0, 0.0),
      child: hasTitle ? _title : null,
    );
  }
}

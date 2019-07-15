import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  final leftSection = new Container();
  final middleSection = new Container();
  final rightSection = new Container();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Row(
          children: <Widget>[leftSection, middleSection, rightSection],
        ),
      ),
    );
  }
}

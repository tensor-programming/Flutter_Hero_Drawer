import 'package:flutter/material.dart';
import 'package:hero_drawer/pages/home.dart';
import 'package:hero_drawer/pages/settings.dart';
import 'package:hero_drawer/pages/accounts.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: <String, WidgetBuilder>{
        "/settings": (BuildContext context) => Settings(),
        "/account": (BuildContext context) => Account(),
      },
    );
  }
}

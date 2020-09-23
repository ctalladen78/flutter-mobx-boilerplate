import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  var title;
  MyHomePage({Key key, this.title}) : super(key:key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container()
    );
  }
}
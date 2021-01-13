import 'package:flutter/material.dart';
import 'package:flutter_locallang/component/applocal.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${getLang(context, "welcomr")}"),
      ),
      body: Container(
        child: Text("${getLang(context, "Body")}"),
      ),
    );
  }
}

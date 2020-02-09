import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("호구왕"),
      ),
      body: new Center(
        child: new Text("Welcome home!"),
      ),
    );
  }
}

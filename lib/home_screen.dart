import 'package:flutter/material.dart';
import 'package:hogu_king_m/play_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("호구왕"),
      ),
      body: new Center(
        child: new PlayListScreen(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Play 기록',
        child: const Icon(Icons.add),
      ),
    );
  }
}


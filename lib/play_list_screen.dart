import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hogu_king_m/data/rest_ds.dart';

import 'models/play.dart';


class PlayListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new PlayListScreenState();
  }
}

class PlayListScreenState extends State<StatefulWidget> {
  RestDataSource api = new RestDataSource();
  StreamController<List<Play>> streamController = new StreamController();

  @override
  void initState() {
    streamController.add(new List<Play>());

    api.getPlays(0).then((List<Play> plays) {
      streamController.add(plays);
      return plays;
    });

    super.initState();
  }

  Widget _buildListTile(AsyncSnapshot snapshot, int index) {
    var title = snapshot.data[index].hogukingId;
    return ListTile(title: Text("$title"));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: streamController.stream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return _buildListTile(snapshot, index);
              });
        });
  }
}

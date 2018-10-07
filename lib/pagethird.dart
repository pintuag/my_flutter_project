import 'package:flutter/material.dart';
import 'package:my_flutter_project/models.dart';

class PageThird extends StatefulWidget {
  PageThird({Key key, this.myListData}) : super(key: key);

  final MyListData myListData;



  @override
  _PageThirdState createState() => new _PageThirdState();
}

class _PageThirdState extends State<PageThird> {
  @override
  Widget build(BuildContext context) {
    var _children = <Widget>[
      new Text("finished: " + widget.myListData.finished.toString()),
      new Text("name: " + widget.myListData.name),
    ];

    return new Scaffold(
      appBar: new AppBar(title: new Text("My List")),
      body: new Column(
        children: _children,
      ),
    );
  }
}

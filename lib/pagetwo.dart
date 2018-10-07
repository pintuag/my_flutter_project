import 'package:flutter/material.dart';
import 'package:my_flutter_project/models.dart';
import 'package:my_flutter_project/pageone.dart';
import 'package:my_flutter_project/pagethird.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => new _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page Two"),
      ),
      body: new ListView.builder(itemBuilder: _itemBuilder),
    );

  }

  Widget _itemBuilder(BuildContext context, int index) {
    MyListData myListData = getmyListData(index);
    return new ListItemWidget(myListData: myListData );
  }
  MyListData getmyListData(int index) {
    return new MyListData(false, "LIST $index");
  }

}
class ListItemWidget extends StatefulWidget {
  ListItemWidget({Key key, this.myListData}) : super(key: key);

  final MyListData myListData;


  @override
  _ListItemWidgetState createState() => new _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return new ListTile(
      title: new Text(widget.myListData.name),
      onTap: _onTap,

    );
  }

  void _onTap() {
    Route route = new MaterialPageRoute(
      settings: new RouteSettings(name: "/todos/todo"),
      builder: (BuildContext context) => new PageThird(myListData: widget.myListData),
    );
    Navigator.of(context).push(route);
  }

}


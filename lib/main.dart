import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_project/pageone.dart';
import 'package:my_flutter_project/pagetwo.dart';
//import 'package:my_flutter_project/pageone.dart';

void main() {

  runApp(new MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light,
        accentColor: Colors.teal
      ),
      routes: <String , WidgetBuilder>{
        "/a" : (BuildContext context )=> new PageOne(),
        "/b" : (BuildContext context )=> new PageTwo(),
      });
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
 // String myText = "Hello World";
//  void _changeText(){
//    setState(() {
//      if(myText.startsWith("H"))
//      myText = "Welcome to my App";
//      else
//        myText = "Hello World";
//
//
//    });
//  }


//  Widget _BodyWidget(){
//    return new Container(
//      padding: const EdgeInsets.all(8.0),
//      child: new Center(
//        child: new Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            new Text(myText , style: new TextStyle(
//              fontSize: 25.0
//            ),),
//          ],
//        ),
//      ),
//
//    );
//  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Task App"),
        elevation: defaultTargetPlatform == TargetPlatform.android?5.0:0.0,
      ),//App Bar
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                  accountName: new Text("UNEVA"),
                  accountEmail: new Text("Uneva@gmail.com"),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.brown,
                  child: new Text("U"),
                ),
              ),
              new ListTile(
                title: new Text("Open Page 1"),
                trailing: new Icon(Icons.folder_open),
                onTap: ()
                    {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed("/a");
//                      Navigator.of(context).push(new MaterialPageRoute(
//                          builder: (BuildContext context)=>
//                          new PageOne()));
                    },
              ),//listtle
              new ListTile(
                title: new Text("Open Page 2"),
                trailing: new Icon(Icons.folder_open),
                onTap: ()
                {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/b");
//                  Navigator.of(context).push(new MaterialPageRoute(
//                      builder: (BuildContext context)=>
//                      new PageTwo()));
                },
              ),//list tile
              new Divider(),
              new ListTile(
                title: new Text("Close Navigation Drawer"),
                trailing: new Icon(Icons.close),
                onTap: ()=> Navigator.of(context).pop()
              ),//list tile
            ],//widget
          ),//listview
        ),//drawer



      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),//center
      ),//container
    );//scaffold
  }
}


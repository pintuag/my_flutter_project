import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => new _PageOneState();
}

class _PageOneState extends State<PageOne> {

  List<bool> _data =  new List<bool>();

  @override
  void initState() {
    setState(() {
      for(int i = 0 ;i<100; i++)
        {
          _data.add(false);
        }

    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
         title: new Text("Page One"),
        ),

      body: new ListView.builder(
        itemCount: _data.length,
        itemBuilder: (BuildContext context , int index )


      {
//        return new ListTile(
//
//          onTap: () {
//            setState(() {
//              if(index==(1))
//                {
//                  Navigator.of(context).push(new MaterialPageRoute(
//                  builder: (BuildContext context)=>
//                  new PageOne()));
//                }
//            });
//
//              },
//
//        );



        return new Card(
          child: new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[
                new Text(("Item ${index+1}")),
                //PopupMenuItemSelected<Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new PageOne()))>
              ],

            ),
          ),
        );
      }
      ),

    );
  }
}
//Navigator.of(context).push(new MaterialPageRoute(
//builder: (BuildContext context)=>
//new PageOne()));


//class PageOne extends StatelessWidget {
//
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("hha"),
//      ),
//    );
//  }
//}

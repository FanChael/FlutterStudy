import 'package:flutter/material.dart';

void main() {
  runApp(
//    new Center(
//      child: new Text(
//        'hello, world',
//        textDirection: TextDirection.ltr,
//      ),
//    ),
//      new MaterialApp(
//        home: new Material(
//          child: new Column(
//            children: <Widget>[
//              new AppBar(
//                title: new Row(
//                  children: <Widget>[
//                    Expanded(
//                        child: new Text('哇哈哈'),
//                    ),
//                    Expanded(
//                      child: new IconButton(
//                        icon: new Icon(Icons.menu),
//                        onPressed: null,
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//              new IconButton(
//                icon: new Icon(Icons.menu),
//                onPressed: null,
//              ),
//            ],
//          ),
//        ),
//      )
      new MaterialApp(
        home: new TutorialHome(),
      )
  );
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            // ignore: argument_type_not_assignable
            icon: new Icon(Icons.menu),
            onPressed: null),
        title: new Text("耶"),
        actions: <Widget>[
          new IconButton(
              // ignore: argument_type_not_assignable
              icon:  new Icon(Icons.search),
              onPressed: null),
        ],
      ),
      body: new Center(
        child: new Container(
          color: Colors.amber,
          width: width * 2 / 3,
          height: height * 2 / 3,
          transform: Matrix4.rotationZ(0.1),
          child: new ListView(
            children: <Widget>[
              new Text(
                'Hello World!',
                style: new TextStyle(
                  fontSize: 55,
                  color: Colors.white,
                ),
              ),
              new Text(
                'Hello 皮皮虾!',
                style: new TextStyle(
                  fontSize: 55,
                  color: Colors.redAccent,
                ),
              ),
            ],
          )
        )
      ),
      floatingActionButton:
          new FloatingActionButton(
              child: new Icon(Icons.add),
              onPressed: null
          ),
    );
  }
}

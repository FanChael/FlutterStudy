import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        home: new ContainerPage(),
      )
  );
}

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 获取屏幕信息么
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.close),
        ),
        title: new Text(
            'Container',
            style: new TextStyle(
            fontSize: 26
          ),
        ),
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
      )
    );
  }
}

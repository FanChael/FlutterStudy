import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        home: new AspectRatioPage(),
      )
  );
}

class AspectRatioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.close),
        ),
        title: new Text(
            'AspectRatio',
            style: new TextStyle(
            fontSize: 26
          ),
        ),
      ),
      body: new Container(
        width: 100,
        color: Colors.cyanAccent,
        child: AspectRatio(   //比例控件呀
            aspectRatio: 1.0, //宽高1:1哟
            child: Center(
              child: new Text(
                  'test',
                  style: new TextStyle(
                    backgroundColor: Colors.black12,
                  ),
              ),
            ),
        ),
      )
    );
  }
}

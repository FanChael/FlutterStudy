import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        home: new SizedBoxPage(),
      )
  );
}

class SizedBoxPage extends StatelessWidget {
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
            'SizedBox',
            style: new TextStyle(
            fontSize: 26
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            width: 60.0,
            height: 100.0,
            // Card大小就是60,100啦
            child: const Card(child: Text('固定尺寸的盒子呀!')),
          ),
          SizedBox(
            width: 60.0,
            height: 100.0,
            child: Container(
              color: Colors.red,
              // Center增加了以后就是居中，此时Center的大小与文本自身有关哟
              child:  Center(
                child: const Card(child: Text(
                    '固定尺寸的盒子呀!',
                   style: const TextStyle(
                     fontSize: 33,
                   ),
                )),
              ),
            )
          ),
        ],
      )
    );
  }
}

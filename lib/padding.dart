import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        home: new PaddingPage(),
      )
  );
}

class PaddingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> itemList = [];
    for (var i = 0; i < 10; ++i) {
      itemList.add(new Padding(
        // https://api.flutter.dev/flutter/painting/EdgeInsets-class.html
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: new Card(
          color: Colors.lightBlue,
          child: new Text(
            'Hello Padding!',
            style: new TextStyle(
              fontSize: 66,
              color: Colors.amber,
            ),
          ),
        ),
      ));
    }

    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.close),
        ),
        title: new Text(
            'Padding',
            style: new TextStyle(
            fontSize: 26
          ),
        ),
      ),
      body: new ListView(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        children: itemList,
      )
    );
  }
}

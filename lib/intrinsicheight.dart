import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        home: new IntrinsicHeightPage(),
      )
  );
}

class IntrinsicHeightPage extends StatelessWidget {
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
            'IntrinsicHeight',
            style: new TextStyle(
            fontSize: 26
          ),
        ),
      ),
      body: new IntrinsicHeight(
        // 有IntrinsicHeight包裹的情况，则两边的高度会根据其中一个控件高度适应（最高的为准，不高的就保持那样）；否则其高度会很高很高...
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              color: Colors.purple,
              width: 100,
            ),
            Container(
              color: Colors.red,
              width: 100,
              height: 50,
            ),
            Container(
              color: Colors.blueAccent,
              width: 100,
              height: 30,
            ),
          ],
        ),
      )
    );
  }
}

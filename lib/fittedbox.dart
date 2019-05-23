import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        home: new FittedBoxPage(),
      )
  );
}

class FittedBoxPage extends StatelessWidget {
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
            'FittedBox',
            style: new TextStyle(
            fontSize: 26
          ),
        ),
      ),
      body: new Container(
        color: Colors.blueAccent,
        width: 200,
        height: 200,
        child: new FittedBox(
          //fit: BoxFit.none,
          // fit: BoxFit.fitHeight, //显示源的完整高度
          fit: BoxFit.fill,        //填充目标框；其他效果可以自己个感受
          alignment: Alignment.center,
          child: new Container(
            child: new Column(
              children: <Widget>[
                new Text(
                    'ahaha',
                     style: new TextStyle(
                       backgroundColor: Colors.yellow,
                       fontSize: 8
                     ),
                ),
                new Text(
                  'ahaha',
                  style: new TextStyle(
                    backgroundColor: Colors.cyanAccent,
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

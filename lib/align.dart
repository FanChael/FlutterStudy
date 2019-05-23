import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        home: new AlignPage(),
      )
  );
}

class AlignPage extends StatelessWidget {
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
            'Align',
            style: new TextStyle(
            fontSize: 26
          ),
        ),
      ),
      body: new Container(
          color: Colors.black26,
          child: GridView.count(
              //内容边距
              padding: EdgeInsets.all(10.0),
              crossAxisCount: 2,      //水平显示个数
              crossAxisSpacing: 10.0, //控件之间水平间距 - 不包含左右哟
              mainAxisSpacing: 10.0, //控件之间垂直间距
              childAspectRatio: 2.0, //子Widget宽高比例
              children: <Widget>[
                new Container(
                  color: Colors.lightBlueAccent,
                  child: new Align(
                    alignment: Alignment.topLeft,
                    child: FlutterLogo(
                      size: 60,
                    ),
                  ),
                ),
                new Container(
                  color: Colors.lightBlueAccent,
                  child: new Align(
                    alignment: Alignment.topRight,
                    child: FlutterLogo(
                      size: 60,
                    ),
                  ),
                ),
                new Container(
                  color: Colors.lightBlueAccent,
                  child: new Align(
                    alignment: Alignment.bottomLeft,
                    child: FlutterLogo(
                      size: 60,
                    ),
                  ),
                ),
                new Container(
                  color: Colors.lightBlueAccent,
                  child: new Align(
                    alignment: Alignment.bottomRight,
                    child: FlutterLogo(
                      size: 60,
                    ),
                  ),
                ),
                new Container(
                  color: Colors.lightBlueAccent,
                  child: new Align(
                    alignment: Alignment.center,
                    child: FlutterLogo(
                      colors: Colors.red,
                      size: 60,
                    ),
                  ),
                ),
                new Container(
                  color: Colors.lightBlueAccent,
                  child: new Align(
                    //基于中心的偏移
                    //-1.0, -1.0左上角 1.0, 1.0右下角
                    alignment: Alignment(1.0, 1.0),
                    child: new Text(
                      'aa',
                      style: new TextStyle(
                        backgroundColor: Colors.blueAccent,
                      ),
                    )
                  ),
                ),
                new Container(
                  color: Colors.lightBlueAccent,
                  child: new Align(
                    //基于左上角(0.0, 0.0)做偏移，(1.0, 1.0)则是右下角
                    alignment: FractionalOffset(1.0, 0.0),
                    child: new Text(
                      'bb',
                      style: new TextStyle(
                        backgroundColor: Colors.blueAccent,
                      ),
                    )
                  ),
                ),
              ],
          ),
        ),
    );
  }
}

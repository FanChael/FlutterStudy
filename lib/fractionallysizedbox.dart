import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new FractionallySizedBoxPage(),
  ));
}

class FractionallySizedBoxPage extends StatelessWidget {
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
            'FractionallySizedBox',
            style: new TextStyle(fontSize: 26),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.blueAccent,
              width: 200.0,
              //double.infinity,
              height: 200.0,
              // double.infinity,
              // 为了看到容器蓝色背景，我们增加点padding
              padding: EdgeInsets.all(10.0),
              child: FractionallySizedBox(
                // 此时黄色区域 size = 200的一半 = 100
                widthFactor: 1.0, //1.5就会超出0.5出来
                heightFactor: 0.5,
                // 根据父控件的尺寸来设置子控件的尺寸 - 比如目前没有宽高因子的情况，则是充满
                child: Container(
                  color: Colors.yellow,
                ),
              ),
            ),
            Container(
              color: Colors.purple,
              width: 200.0,
              //double.infinity,
              height: 200.0,
              // double.infinity,
              // 为了看到容器蓝色背景，我们增加点padding
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10.0),
              child: FractionallySizedBox(
                // 此时黄色区域 size = 200的一半 = 100
                widthFactor: 1.5, //1.5就会超出0.5出来，这个0.5不是说父控件大小的一半。Flutter里面很多计算都是一个公式..
                heightFactor: 0.5,
                // 根据父控件的尺寸来设置子控件的尺寸 - 比如目前没有宽高因子的情况，则是充满
                child: Container(
                  color: Colors.green,
                ),
              ),
            )
          ],
        ));
  }
}

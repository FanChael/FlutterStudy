import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        home: new CenterPage(),
      )
  );
}

class CenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = '滴滴滴';
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.close),
        ),
        title: new Text(
            'Center',
            style: new TextStyle(
            fontSize: 26
          ),
        ),
      ),
      body: new Center(
        // 只有当一个新的小部件的键与与与该元素相关联的当前小部件的键相同时，它才用于更新现有的元素；->framwork.dart，未怎么研究
        key: new Key('HuaWei'),
        widthFactor: 2.0, //表示其宽度是子控件宽度的2倍，那么我的控件的水平位置 = child's width  * 2 /2 作为中心x位置; 高度同理
        child: new Text(
          '${title}',
          style: new TextStyle(
            fontSize: 26,
            backgroundColor: Colors.yellow,
          ),
        ),
      )
    );
  }
}

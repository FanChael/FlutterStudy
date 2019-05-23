import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        home: new CustomSingleChildLayoutPage(),
      )
  );
}

// 利用该控件，我们可以进行child的布局了啦.... https://www.cnblogs.com/holy-loki/p/9735060.html
class CustomSingle extends SingleChildLayoutDelegate  {
  final Size size;

  CustomSingle(this.size);

  @override
  Size getSize(BoxConstraints constraints) => size;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    // 布局控件的大小，可以与布局大小不一致！
    return new BoxConstraints.tight(Size(60, 60));
  }

  @override
  bool shouldRelayout(CustomSingle oldDelegate) {
    // TODO: implement shouldRelayout
    return size != oldDelegate.size;
  }
}

class CustomSingleChildLayoutPage extends StatelessWidget {
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
            'CustomSingleChildLayout',
            style: new TextStyle(
            fontSize: 26
          ),
        ),
      ),
      body: Container(
        color: Colors.blue,
        padding: const EdgeInsets.all(5.0),
        child: CustomSingleChildLayout( // 通过这个控件去封装一些基础的控件
          // 自定义布局大小
          delegate: CustomSingle(Size(188.0, 188.0)),
          child: Container(
            color: Colors.red,
            width: 100.0, // delegate约束了，这个就无效了
            height: 300.0,
          ),
        ),
      )
    );
  }
}

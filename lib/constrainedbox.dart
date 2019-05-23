import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        home: new ConstrainedBoxPage(),
      )
  );
}

class ConstrainedBoxPage extends StatelessWidget {
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
            'ConstrainedBox',
            style: new TextStyle(
            fontSize: 26
          ),
        ),
      ),
      body: ConstrainedBox(
          // 最小高度为88.0，最大高度180， 最小宽度200.0，最大宽度300 作为约束
          constraints: BoxConstraints(minHeight: 88.0, maxHeight: 180.0, minWidth: 200.0, maxWidth: 300.0),
          child: const Card(
            margin: EdgeInsets.only(left: 100, top: 100),
            child: Text(
                'Hello Kitty!',
                // 文本居中 - 如果要控件居中，请使用Center之类的实现布局
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 44.0 //这个大小+控件约束导致内容显示不全！
                ),
            ),
          ),
      )
    );
  }
}

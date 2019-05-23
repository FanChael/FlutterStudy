import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        home: new OffstagePage(),
      )
  );
}

class OffstagePage extends StatelessWidget {
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
            'Offstage',
            style: new TextStyle(
            fontSize: 26
          ),
        ),
      ),
      body: Offstage(
        offstage: false, // true表示不显示
        child: Column(
          children: <Widget>[
            new Text('懒得设置样式，就这么大吧！'),
            // Visibility更好，更高效！ which can hide a child more efficiently (albeit less subtly).
            // https://api.flutter.dev/flutter/widgets/Visibility-class.html
            Visibility(
              visible: true,
              child: new Text('懒得设置样式，就这么大吧！'),
            ),
          ],
        ),
      )
    );
  }
}

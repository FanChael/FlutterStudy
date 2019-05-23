import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        home: new TransformPage(),
      )
  );
}

class TransformPage extends StatelessWidget {
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
            'Transform',
            style: new TextStyle(
            fontSize: 26
          ),
        ),
      ),
      body: Container(
        color: Colors.green,
        child: Transform(
          alignment: Alignment.center,
          // 绕x轴旋转一下，字体展现前后倾斜的效果，其他效果再琢磨琢磨；
          transform: Matrix4.rotationX(1.0),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            color: const Color(0xFFE8581C),
            child: const Text(
                'Apartment for rent!',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.lightBlueAccent,
                ),
            ),
          ),
        ),
      )
    );
  }
}

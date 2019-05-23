import 'package:flutter/material.dart';

void main() {
  runApp(
      new MaterialApp(
        home: new BaselinePage(),
      )
  );
}

class BaselinePage extends StatelessWidget {
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
            'Baseline',
            style: new TextStyle(
            fontSize: 26
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 150,
            color: Colors.lightBlue,
          ),
          Baseline(
            baseline: 150,
            // 排字母
            baselineType: TextBaseline.alphabetic,
            child: Center(
              child: new Text(
                'Wj',
                style: new TextStyle(
                  fontSize: 60.0,
                  color: Colors.red,
                  //textBaseline: TextBaseline.alphabetic, // 基线，两个值，字面意思是一个用来排字母的，一人用来排表意字的（类似中文）
                ),
              ),
            )
          ),
          Baseline( // 跟Wj在一条水平线上
              baseline: 150,
              // 排汉字 - 目前来看，采用这种方式的话，汉子底部距离150有一定距离!
              baselineType: TextBaseline.ideographic,
              child: new Text(
              '唐三',
              style: new TextStyle(
                fontSize: 60.0,
                color: Colors.red,
                //textBaseline: TextBaseline.ideographic,
              ),
            ),
          )
        ],
      )
    );
  }
}

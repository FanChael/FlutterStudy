import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/customsinglechildlayout.dart';

import 'package:flutter_app/fittedbox.dart';
import 'package:flutter_app/fractionallysizedbox.dart';
import 'package:flutter_app/intrinsicheight.dart';
import 'package:flutter_app/offstage.dart';
import 'package:flutter_app/padding.dart';
import 'package:flutter_app/align.dart';
import 'package:flutter_app/aspectratio.dart';
import 'package:flutter_app/center.dart';
import 'package:flutter_app/container.dart';
import 'package:flutter_app/sizedbox.dart';
import 'package:flutter_app/constrainedbox.dart';
import 'package:flutter_app/baseline.dart';
import 'package:flutter_app/transform.dart';

// 演示页面相关信息
final List<String> titleList = [
  'Align', 'AspectRatio', 'Center',
  'Container', 'FittedBox', 'Padding',
  'ConstrainedBox', 'SizedBox', 'Baseline',
  'FractionallySizedBox', 'IntrinsicHeight',
  'OffstagePage', 'Transform', 'CustomSingleChildLayout'];
int index = 0;

void main() {
  index = 0;
  runApp(
      new MaterialApp(
        home: new TutorialHome(),
        routes: <String, WidgetBuilder> {
          // 路由Key -------------通过key进行页面路由--------------创建路由页面
          (titleList[index++] + 'Page'): (BuildContext context) => new AlignPage(),
          (titleList[index++] + 'Page') : (BuildContext context) => new AspectRatioPage(),
          (titleList[index++] + 'Page'): (BuildContext context) => new CenterPage(),
          (titleList[index++] + 'Page') : (BuildContext context) => new ContainerPage(),
          (titleList[index++] + 'Page'): (BuildContext context) => new FittedBoxPage(),
          (titleList[index++] + 'Page'): (BuildContext context) => new PaddingPage(),
          (titleList[index++] + 'Page'): (BuildContext context) => new ConstrainedBoxPage(),
          (titleList[index++] + 'Page'): (BuildContext context) => new SizedBoxPage(),
          (titleList[index++] + 'Page'): (BuildContext context) => new BaselinePage(),
          (titleList[index++] + 'Page'): (BuildContext context) => new FractionallySizedBoxPage(),
          (titleList[index++] + 'Page'): (BuildContext context) => new IntrinsicHeightPage(),
          (titleList[index++] + 'Page'): (BuildContext context) => new OffstagePage(),
          (titleList[index++] + 'Page'): (BuildContext context) => new TransformPage(),
          (titleList[index++] + 'Page'): (BuildContext context) => new CustomSingleChildLayoutPage(),
        },
      )
  );
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    List<Widget> itemList = [];
    for (int i = 0; i < titleList.length; ++i) {
      itemList.add(new GestureDetector(
        onTap: () => (
            // ignore: expected_token, new_with_non_type
            // 根据页面名称进行路由跳转
            Navigator.of(context).pushNamed((titleList[i] + 'Page'))
            // 这是new控件的方式进行的路由
            //Navigator.push(context, new MaterialPageRoute(builder: (context) => widgetList[i]))
        ),
        child: new Container(
          margin: EdgeInsets.only(left: (i * 6.0)),
          child: new Text(
              titleList[i] + ' - s_widget    ->',
              style: new TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
        ),
        ),
      ));
    }

    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          leading: GestureDetector(
            onTap: () async {
              await quit(); //相对exit(0)，更柔和的退出
            },
            child: Icon(Icons.close),
          ),
          title: new Text(
            'Home',
            style: new TextStyle(
                fontSize: 26
            ),
          ),
        ),
        body: new Center(
            child: new Container(
                color: Colors.amber,
                width: width,
                height: height,
                margin: EdgeInsets.only(bottom: 40),
                transform: Matrix4.rotationZ(0.1),
                //                child: new ListView(
                //                  children: itemList,
                //                )
                // 采用带分割线的控件
                child: new ListView.separated(
                  itemBuilder: (context, index) {
                    // 分割线多增加了，条目不能越界！
                    if (index == itemList.length) {
                      return null;
                    }
                    return itemList[index];
                  },
                  // 简单分割线增加，但是高度不能设置的哟！(height：分割线Widget的高，不是分割线本身效果的高,可以达到两个Widget 之间margin的效果)
                  separatorBuilder: (BuildContext context, int index) => new Divider(
                    color: Colors.black,
                  ),
                  // 最后一个条目底部再增加一个分割线
                  itemCount: itemList.length + 1,
                )
            )
        )
    );
  }

  // 退出的一种方式
  static Future<void> quit() async {
    await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }
}

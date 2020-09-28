/*
 * @Description: 
 * @Version: 0.0.1
 * @Autor: hao wang
 * @Date: 2020-09-26 08:55:16
 * @LastEditors: hao wang
 * @LastEditTime: 2020-09-28 17:30:18
 */
import 'package:flutter/material.dart';
import 'draggable_sample.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MEET',
      // 去掉debug图标
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      // 自定义的组件
      home: DraggableSample(),
    );
  }
}



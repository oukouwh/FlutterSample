/*
 * @Description: 
 * @Version: 0.0.1
 * @Autor: hao wang
 * @Date: 2020-09-28 16:09:30
 * @LastEditors: hao wang
 * @LastEditTime: 2020-09-28 16:11:43
 */
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: Text(
          '这是动画结束之后你看到的界面'
        ),
      ),
    );
  }
}
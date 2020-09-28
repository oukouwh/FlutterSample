/*
 * @Description: 
 * @Version: 0.0.1
 * @Autor: hao wang
 * @Date: 2020-09-28 17:21:47
 * @LastEditors: hao wang
 * @LastEditTime: 2020-09-28 17:25:09
 */
import 'package:flutter/material.dart';

class ToolTipSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MEET-YOU-TOOL-TIP'),
      ),
      body: Tooltip(
        child: Image.asset('./images/timg.jpg'),
        message: '哈哈哈哈哈',
      ),
    );
  }
}
/*
 * @Description: 
 * @Version: 0.0.1
 * @Autor: hao wang
 * @Date: 2020-09-28 14:43:44
 * @LastEditors: hao wang
 * @LastEditTime: 2020-09-28 14:50:11
 */
import 'package:flutter/material.dart';

class ExpansionTileViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meet'),
      ),
      body: Center(
        child: ExpansionTile(
          title: Text('UserInfo'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white,
          children: [
            ListTile(
              title: Text('list title'),
              subtitle: Text('this is my info'),
            )
          ],
          // 展示是打开的，
          initiallyExpanded: true,
        ),
      ),
    );
  }
}
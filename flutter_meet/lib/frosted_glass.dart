/*
 * @Description: 
 * @Version: 0.0.1
 * @Autor: hao wang
 * @Date: 2020-09-28 10:02:15
 * @LastEditors: hao wang
 * @LastEditTime: 2020-09-28 10:18:00
 */
import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.network('https://img.gmw.cn/images/attachement/png/site2/20200926/f44d305ea0a220d977650b.png'),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200
                    ),
                    
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
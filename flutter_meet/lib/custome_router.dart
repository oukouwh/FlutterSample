/*
 * @Description: 
 * @Version: 0.0.1
 * @Autor: hao wang
 * @Date: 2020-09-28 08:13:36
 * @LastEditors: hao wang
 * @LastEditTime: 2020-09-28 08:47:18
 */
import 'package:flutter/material.dart';

class CustomeRouter extends PageRouteBuilder{
  final Widget widget;
  CustomeRouter(this.widget):super(transitionDuration: Duration(seconds: 1),
    pageBuilder: (
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2,
    ){
      return widget;
    },
    transitionsBuilder:(
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2,
      Widget child
    ){

      return SlideTransition(
        position: Tween<Offset>(
          begin: Offset(-1.0,0.0),
          end: Offset(0.0,0.0)
        ).animate(
          CurvedAnimation(
            parent: animation1,
            curve: Curves.fastOutSlowIn
          )
        ),
        child: child,
      );

      // return RotationTransition(
      //   turns: Tween(
      //     begin: 0.0,end: 1.0
      //   ).animate(
      //     CurvedAnimation(
      //       parent: animation1,
      //       curve: Curves.fastOutSlowIn
      //     )
      //   ),
      //   child: ScaleTransition(
      //   scale: Tween(
      //     begin: 0.0,end: 1.0
      //   ).animate(
      //     CurvedAnimation(
      //       parent: animation1,
      //       curve: Curves.fastOutSlowIn
      //     )
      //   ),
      //   child: child,
      //   ),
      // );
      
      // return ScaleTransition(
      //   scale: Tween(
      //     begin: 0.0,end: 1.0
      //   ).animate(
      //     CurvedAnimation(
      //       parent: animation1,
      //       curve: Curves.fastOutSlowIn
      //     )
      //   ),
      //   child: child,
      // );

      // 渐隐渐现路由动画效果
      // return FadeTransition(
      //   opacity: Tween(
      //     begin: 0.0,end: 1.0
      //   )
      //     .animate(
      //       CurvedAnimation(
      //         parent: animation1,
      //         curve: Curves.fastOutSlowIn
      //       )
      //     ),
      //     child: child,
      // );
    }
  );
}
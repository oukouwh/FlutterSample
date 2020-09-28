/*
 * @Description: 
 * @Version: 0.0.1
 * @Autor: hao wang
 * @Date: 2020-09-28 15:53:20
 * @LastEditors: hao wang
 * @LastEditTime: 2020-09-28 16:38:31
 */
import 'package:flutter/material.dart';
import 'my_home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  AnimationController _controller;
  Animation _animation;

  @override
    void initState(){
      super.initState();
      _controller = AnimationController(vsync: this,duration: Duration(milliseconds: 3000));
      _animation = Tween(begin: 0.0,end: 1.0).animate(_controller);

      _animation.addStatusListener((status) {
        if(status == AnimationStatus.completed){
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context)=> MyHomePage()), 
            (route) => route == null);
        }
      });

      _controller.forward(); // 播放动画

    }

    @override
      void dispose(){
        _controller.dispose();
        super.dispose();
      }


  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.asset(
        './images/timg.jpg',
        scale: 2.0,
        fit: BoxFit.cover,
      ),

    );
  }
}
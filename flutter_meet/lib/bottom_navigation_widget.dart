import 'package:flutter/material.dart';
import 'pages/home_views.dart';
import 'pages/search_views.dart';
import 'pages/heart_views.dart';
import 'pages/user_views.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  
  final _BottomNavigationColor = Colors.blue;
  // 声明索引
  int _currentIndex = 0;
  List<Widget> list = List();

// 初始化状态。把编写的组件全部进行引入
  @override
  void initState(){
    list
      ..add(HomeViews())
      ..add(SearchViews())
      ..add(HeartViews())
      ..add(UsertViews());
      super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _BottomNavigationColor,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: _BottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: _BottomNavigationColor,
            ),
            title: Text(
              'Search',
              style: TextStyle(color: _BottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.hearing_outlined,
              color: _BottomNavigationColor,
            ),
            title: Text(
              'Heart',
              style: TextStyle(color: _BottomNavigationColor),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervised_user_circle,
              color: _BottomNavigationColor,
            ),
            title: Text(
              'User',
              style: TextStyle(color: _BottomNavigationColor),
            )
          )
        ],
        // 选中高亮
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      );
  }
}
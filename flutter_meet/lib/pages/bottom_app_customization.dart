import 'package:flutter/material.dart';
import '../each_views.dart';

class BottomAppCustomization extends StatefulWidget {
  @override
  _BottomAppCustomizationState createState() => _BottomAppCustomizationState();
}

class _BottomAppCustomizationState extends State<BottomAppCustomization> {
  List<Widget> _eachViews;
  int _index = 0;

  @override
  void initState(){
    super.initState();
    _eachViews = List();
    _eachViews
      ..add(EachViews('Home'))
      ..add(EachViews('Search'))
      ..add(EachViews('Heart'))
      ..add(EachViews('User'));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachViews[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return EachViews('Create New Page');
          }));
        },
        tooltip: 'MEET-YOU',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  _index=0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  _index=1;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.headset_sharp),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  _index=2;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.supervised_user_circle),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  _index=3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
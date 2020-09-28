import 'package:flutter/material.dart';

class WarpViews extends StatefulWidget {
  @override
  _WarpViewsState createState() => _WarpViewsState();
}

class _WarpViewsState extends State<WarpViews> {

  List<Widget> list;

  void initState(){
    super.initState();
    list = List<Widget>()..add(buildAddButton());
  }

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;

    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('MEET'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: width,
            height: height/2,
            color: Colors.grey,
            child: Wrap(
              children: list,
              spacing: 26.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAddButton() {
    return GestureDetector(
      onTap: (){
        if(list.length<9){
          setState(() {
            list.insert(list.length-1, buildPhoto());
          }); 
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 60.0,
          height: 60.0,
          color: Colors.yellow,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget buildPhoto(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 60.0,
        height: 60.0,
        color: Colors.red,
        child: Center(
          child: Text('图片'),
        ),
      ),
    );
  }
 
}


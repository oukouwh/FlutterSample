/*
 * @Description: 
 * @Version: 0.0.1
 * @Autor: hao wang
 * @Date: 2020-09-28 14:53:57
 * @LastEditors: hao wang
 * @LastEditTime: 2020-09-28 15:28:14
 */
import 'package:flutter/material.dart';

class ExpansionListViews extends StatefulWidget {
  @override
  _ExpansionListViewsState createState() => _ExpansionListViewsState();
}

class _ExpansionListViewsState extends State<ExpansionListViews> {
  
  List<int> mList;
  List<ExpandState> expandStateList;
  _ExpansionListViewsState(){
    mList = new List();
    expandStateList = new List();
    for(int i=0;i <10; i++) {
      mList.add(i);
      expandStateList.add(ExpandState(i,false));
    }
  }

  _setCurrentIndex(int index,isExpand){
    setState(() {
      expandStateList.forEach((item) {
        if(item.index == index){
          item.isOpen = !isExpand;
        }
       });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('this is my app views')),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index,bol){
            _setCurrentIndex(index,bol);
          },
          children: mList.map((index){
            return ExpansionPanel(
              headerBuilder: (context,isExpand){
                return ListTile(
                  title: Text('this is No.$index')
                );
              },
              body: ListTile(
                title: Text('expansion no.$index'),
              ),
              isExpanded: expandStateList[index].isOpen
            );
          }).toList(),
        ),
      ),
    );   
  }
}

class ExpandState{
  var isOpen;
  var index;
  ExpandState(this.index,this.isOpen);
}
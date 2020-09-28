/*
 * @Description: 
 * @Version: 0.0.1
 * @Autor: hao wang
 * @Date: 2020-09-28 17:06:18
 * @LastEditors: hao wang
 * @LastEditTime: 2020-09-28 17:11:36
 */
import 'package:flutter/cupertino.dart';

class RightBackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          color: CupertinoColors.activeOrange,
          child: CupertinoButton(
            child: Icon(CupertinoIcons.add),
            onPressed: (){
              Navigator.of(context).push(
                CupertinoPageRoute(builder: (BuildContext context){
                  return RightBackPage();
                })
              );
            },
          ),
        ),
      ),
    );
  }
}
/*
 * @Description: 
 * @Version: 0.0.1
 * @Autor: hao wang
 * @Date: 2020-09-28 17:31:42
 * @LastEditors: hao wang
 * @LastEditTime: 2020-09-28 17:44:07
 */
import 'package:flutter/material.dart';

class DraggableComponent extends StatefulWidget {

  final Offset offset;
  final Color widgetColor;
  const DraggableComponent({Key key,this.offset,this.widgetColor}):super(key:key);

  @override
  _DraggableComponentState createState() => _DraggableComponentState();
}

class _DraggableComponentState extends State<DraggableComponent> {

  Offset offset = Offset(0.0,0.0);
  @override
  void initState(){
    super.initState();
    offset = widget.offset;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Draggable(
        data: widget.widgetColor,
        child: Container(
          width: 100.0,
          height: 100.0,
          color: widget.widgetColor,
        ),
        feedback: Container(
          width: 100.0,
          height: 100.0,
          color: widget.widgetColor.withOpacity(0.5),
        ),
        onDraggableCanceled: (Velocity velocity,Offset offset){
          setState(() {
            this.offset = offset;
          });
        },
      ),
    );
  }
}
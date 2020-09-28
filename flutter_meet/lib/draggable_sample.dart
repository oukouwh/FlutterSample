import 'package:flutter/material.dart';
import 'draggable_component.dart';

class DraggableSample extends StatefulWidget {
  @override
  _DraggableSampleState createState() => _DraggableSampleState();
}

class _DraggableSampleState extends State<DraggableSample> {

  Color _draggableColor = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DraggableComponent(
            offset: Offset(70.0,70.0),
            widgetColor: Colors.red,
          ),
          DraggableComponent(
            offset: Offset(170.0,170.0),
            widgetColor: Colors.green,
          ),
          Center(
            child: DragTarget(
              onAccept: (Color color){
                _draggableColor = color;
              },
              builder: (context,candidateData,rejectedData){
                return Container(
                  width: 200.0,
                  height: 200.0,
                  color: _draggableColor,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
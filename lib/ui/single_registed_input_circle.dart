import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleRegisteredInputCircle extends StatefulWidget {

  bool isRegistered;

  SingleRegisteredInputCircle(this.isRegistered);

  @override
  _SingleRegisteredInputCircleState createState() =>
      _SingleRegisteredInputCircleState();
}

class _SingleRegisteredInputCircleState
    extends State<SingleRegisteredInputCircle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 14,
      height: 14,
      decoration: BoxDecoration(
          borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
          border: new Border.all(
            color: Colors.white,
            width: 1.0,
          ),
          color: widget.isRegistered ? Colors.white : Colors.black),
    );
  }
}

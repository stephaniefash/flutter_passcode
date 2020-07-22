import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class SinglePassCodeButton extends StatefulWidget {
  final String number;

  @override
  _SinglePassCodeButtonState createState() => _SinglePassCodeButtonState();

  SinglePassCodeButton(this.number);
}

class _SinglePassCodeButtonState extends State<SinglePassCodeButton> {

  @override
  void initState() {

    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: new OutlineButton(
        shape: CircleBorder(side: BorderSide(width: 300)),
        textColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            widget.number,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w100),
          ),
        ),
        borderSide:
            BorderSide(color: Colors.white, style: BorderStyle.solid, width: 1),
        onPressed: () {},
      ),
    );
  }
}

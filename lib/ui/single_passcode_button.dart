import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_passcode/keypad_entered_password_store.dart';

class SinglePassCodeButton extends StatefulWidget {
  final String number;

  @override
  _SinglePassCodeButtonState createState() => _SinglePassCodeButtonState();

  SinglePassCodeButton(this.number);
}

class _SinglePassCodeButtonState extends State<SinglePassCodeButton> {
  KeypadEnteredPasswordStore passwordStore = KeypadEnteredPasswordStore();
  bool isAccessGranted = false;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
          borderSide: BorderSide(
              color: Colors.white, style: BorderStyle.solid, width: 1),
          onPressed: _storePressedValue),
    );
  }

  _storePressedValue() async {
    passwordStore.addNewlyEnteredNumber(widget.number);
    if (passwordStore.userInput.length == 4) {
      bool isValidPassword  = await passwordStore.evaluatePassword();
      setState(() {
        isAccessGranted = isValidPassword;
        print(isAccessGranted);
      });
    }
  }
}

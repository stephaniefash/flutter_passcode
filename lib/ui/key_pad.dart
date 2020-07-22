import 'package:flutter/widgets.dart';
import 'package:flutter_passcode/local_storage.dart';
import 'package:flutter_passcode/ui/single_passcode_button.dart';

class KeyPad extends StatefulWidget {
  @override
  _KeyPadState createState() => _KeyPadState();
}

class _KeyPadState extends State<KeyPad> {
  LocalStorage localStorage = new LocalStorage();

  @override
  void initState() {
    localStorage.savePasswordList();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column
        (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SinglePassCodeButton("1"),
              SinglePassCodeButton("2"),
              SinglePassCodeButton("3"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SinglePassCodeButton("4"),
              SinglePassCodeButton("5"),
              SinglePassCodeButton("6"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SinglePassCodeButton("7"),
              SinglePassCodeButton("8"),
              SinglePassCodeButton("9"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SinglePassCodeButton("0"),
            ],
          )
        ],
      ),
    );
  }
}

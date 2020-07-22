import 'package:flutter/material.dart';
import 'package:flutter_passcode/ui/key_pad.dart';
import 'package:flutter_passcode/ui/single_registed_input_circle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SingleRegisteredInputCircle(),
                SingleRegisteredInputCircle(),
                SingleRegisteredInputCircle(),
                SingleRegisteredInputCircle(),
              ],
            ),
          ),
          KeyPad()
        ],
      ),
    );
  }

}

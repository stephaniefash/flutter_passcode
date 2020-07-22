import 'dart:async';

class KeypadEnteredPasswordStore {

  static const List<String> SAVED_PASSWORD = ["1", "2","3","5"];
  static const int PASSWORD_LIMIT = 4;
  List<String> _storedList = [];
  final _controller = new StreamController<List<String>>();

  static final KeypadEnteredPasswordStore _keypadEnteredPasswordStore =
      KeypadEnteredPasswordStore._internal();

  void addNewlyEnteredNumber(String number){
    if(_storedList.length != PASSWORD_LIMIT) {
      _storedList.add(number);
      _controller.sink.add(_storedList);
    }
  }

  get userInput => _storedList;

  void dispose(){
    _controller.close();
  }

  void evaluate(){
    print("EVALUATING");
  }


  factory KeypadEnteredPasswordStore() {
    return _keypadEnteredPasswordStore;
  }

  KeypadEnteredPasswordStore._internal();
}

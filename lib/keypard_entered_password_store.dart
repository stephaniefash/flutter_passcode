class KeypadEnteredPasswordStore {

  List<String> enteredNumbers = [];
  static const int PASSWORD_LIMIT = 4;

  static final KeypadEnteredPasswordStore _keypadEnteredPasswordStore =
      KeypadEnteredPasswordStore._internal();

  void addNewlyEnteredNumber(String number){
    if(enteredNumbers.length != PASSWORD_LIMIT) { enteredNumbers.add(number);}
    print(enteredNumbers);
  }

  void _clearData(){
    enteredNumbers = [];
  }

  factory KeypadEnteredPasswordStore() {
    return _keypadEnteredPasswordStore;
  }

  KeypadEnteredPasswordStore._internal();
}

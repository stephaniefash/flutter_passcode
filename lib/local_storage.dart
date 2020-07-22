import 'package:shared_preferences/shared_preferences.dart';

import 'keypad_entered_password_store.dart';

class LocalStorage {
  final String storedPasswordKey = "stored-password";

  Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  KeypadEnteredPasswordStore passwordStore = KeypadEnteredPasswordStore();

  Future<bool> savePasswordList() async {
    return  prefs.then((value) => value.setStringList(storedPasswordKey, KeypadEnteredPasswordStore.SAVED_PASSWORD;));
  }

  getStoredPasswordAsList() async {
    return await prefs.then((value) => value.getStringList(storedPasswordKey));
  }
}

import 'package:flutter/material.dart';

class pin_provider extends ChangeNotifier {
  String _pin = "";

  get getPin => _pin;

  void setPin(pin) {
    _pin = pin;
    notifyListeners();
  }

  bool checkPin(pin) {
    return _pin == pin;
  }
}

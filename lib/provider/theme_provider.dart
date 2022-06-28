import 'package:flutter/material.dart';

class theme_provider extends ChangeNotifier {
  bool _darkTheme = false;
  get getTheme => _darkTheme;

  void setTheme() {
    _darkTheme = !_darkTheme;
    notifyListeners();
  }

  void setOptionalTheme(theme) {
    _darkTheme = theme;
    notifyListeners();
  }
}

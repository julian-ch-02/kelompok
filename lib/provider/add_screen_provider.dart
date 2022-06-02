import 'package:flutter/material.dart';
import 'package:kelompok/widget/register/type.dart';

class add_screen_provider extends ChangeNotifier {
  Widget _screen = type();

  get getScreen => _screen;

  void setScreen(Widget screen) {
    _screen = screen;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class type_provider extends ChangeNotifier {
  String _item = '';
  List _items = ['online', 'offline'];
  get getAllItems => _items;
  get getItem => _item;
  void setItem(value) {
    _item = value;
    notifyListeners();
  }
}

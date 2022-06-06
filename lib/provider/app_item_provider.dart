import 'package:flutter/material.dart';
import 'package:kelompok/model/appItem.dart';

class app_item_provider extends ChangeNotifier {
  List<appItem> _items = [
    appItem(
      name: 'Clash of Clans',
      image: '',
      type: false,
      usernamePlayer: 'tes',
      passwordPlayer: 'tes',
      emailPlayer: 'tes',
      phonePlayer: 'tes',
    ),
    appItem(
      name: 'Whatsapp',
      image: '',
      type: true,
      usernamePlayer: 'tes',
      passwordPlayer: 'tes',
      emailPlayer: 'tes',
      phonePlayer: 'tes',
    ),
  ];
  get getAllItems => _items;

  Map temp = {
    'name': '',
    'type': '',
    'image': '',
    'usernamePlayer': '',
    'passwordPlayer': '',
    'emailPlayer': '',
    'phonePlayer': '',
    'description': '',
    'category': ''
  };

  get getTempItem => temp;

  void setNewItem(Map values) {
    values.forEach((key, value) {
      temp[key] = value;
    });
    notifyListeners();
  }

  void addNewItem() {
    appItem tempAppItem = appItem.fromMap(temp);
    temp.updateAll((key, value) => '');
    _items.add(tempAppItem);
    notifyListeners();
  }
}

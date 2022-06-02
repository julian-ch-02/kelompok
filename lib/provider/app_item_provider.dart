import 'package:flutter/material.dart';
import 'package:kelompok/model/appItem.dart';

class app_item_provider extends ChangeNotifier {
  List<appItem> _items = [
    appItem(
      name: 'Clash of Clans',
      image: Image.asset(
        'packages/kelompok/images/clashofclans.png',
      ),
      type: false,
      usernamePlayer: 'tes',
      passwordPlayer: 'tes',
      emailPlayer: 'tes',
      phonePlayer: 'tes',
    ),
    appItem(
      name: 'Whatsapp',
      image: Image.asset(
        'packages/kelompok/images/whatsapp.png',
      ),
      type: true,
      usernamePlayer: 'tes',
      passwordPlayer: 'tes',
      emailPlayer: 'tes',
      phonePlayer: 'tes',
    ),
  ];
  get getAllItems => _items;
  void addNewItem(appItem item) {
    _items.add(item);
    notifyListeners();
  }
}

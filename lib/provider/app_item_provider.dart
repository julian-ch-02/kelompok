import 'package:flutter/material.dart';
import 'package:kelompok/model/appItem.dart';

class app_item_provider extends ChangeNotifier {
  List _searchItems = [];
  List _sortedItems = [];
  int _count = 0;

  List<appItem> _items = [
    appItem(
      id: 0,
      name: 'Clash of Clans',
      image: '',
      type: false,
      usernamePlayer: 'tes',
      passwordPlayer: 'tes',
      emailPlayer: 'tes',
      phonePlayer: 'tes',
    ),
    appItem(
      id: 1,
      name: 'Whatsapp',
      image: '',
      type: true,
      usernamePlayer: 'tes',
      passwordPlayer: 'tes',
      emailPlayer: 'tes',
      phonePlayer: 'tes',
    ),
  ];

  List<appItem> _onlineItems = [
    appItem(
      name: 'Clash of Clans',
      image: '',
      type: true,
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
  get getAllItems => _count == 0 ? _items : _searchItems;

  get getOnlineItem => _onlineItems;

  void searching(String val) {
    _searchItems.clear();
    _searchItems = _items
        .where(
          (item) => item.name.toLowerCase().contains(
                val.toLowerCase(),
              ),
        )
        .toList();
    _count = val.length;
    notifyListeners();
  }

  void sorting() {
    _items.sort(
      (a, b) => a.name.toLowerCase().compareTo(
            b.name.toLowerCase(),
          ),
    );
    notifyListeners();
  }

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
    temp.addAll(
      {
        'id': _items.length,
      },
    );
    appItem tempAppItem = appItem.fromMap(temp);
    temp.updateAll((key, value) => '');
    _items.add(tempAppItem);
    notifyListeners();
  }

  void addNewOnlineItem(appItem item) {
    item.id = _items.length;
    _items.add(item);
    notifyListeners();
  }

  void editItem(Map objectItem) {
    appItem item = appItem.fromMap(objectItem);
    _items[_items.indexWhere((e) => e.id == item.id)] = item;

    notifyListeners();
  }
}

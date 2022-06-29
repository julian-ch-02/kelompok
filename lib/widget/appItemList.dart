import 'package:flutter/material.dart';
import 'package:kelompok/model/appItem.dart';
import 'package:kelompok/widget/item.dart';
import 'package:kelompok/widget/search.dart';
import 'package:kelompok/widget/sort.dart';
import 'package:provider/provider.dart';
import 'package:kelompok/provider/app_item_provider.dart';

class appItemList extends StatelessWidget {
  appItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<appItem> _items = context.watch<app_item_provider>().getAllItems;

    Iterable offlineApp = _items.where((item) => item.type == false);

    Iterable onlineApp = _items.where((item) => item.type == true);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          search(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('offline (${offlineApp.length})'),
              sort(),
            ],
          ),
          Flexible(
            child: ListView.builder(
              itemCount: offlineApp.length,
              itemBuilder: (context, index) {
                return item(
                  passedItem: offlineApp.toList()[index],
                );
              },
            ),
          ),
          Text('online (${onlineApp.length})'),
          Flexible(
            child: ListView.builder(
              itemCount: onlineApp.length,
              itemBuilder: (context, index) {
                return item(
                  passedItem: onlineApp.toList()[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kelompok/provider/app_item_provider.dart';
import 'package:kelompok/model/appItem.dart';
import 'package:kelompok/widget/item.dart';

class available_item extends StatelessWidget {
  available_item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<appItem> onlineItem = context.read<app_item_provider>().getOnlineItem;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.03,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
              ),
              child: Text('Aplikasi yang tersedia di android'),
            ),
            Flexible(
              child: ListView.builder(
                itemCount: onlineItem.length,
                itemBuilder: (context, index) {
                  return item(
                    passedItem: onlineItem.toList()[index],
                    isTrailing: true,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

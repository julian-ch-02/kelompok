import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kelompok/provider/app_item_provider.dart';
import 'package:kelompok/model/appItem.dart';
import 'package:kelompok/widget/custom_dialog.dart';
import 'package:kelompok/screen/detail_screen.dart';

class item extends StatelessWidget {
  item({Key? key, required this.passedItem, this.isTrailing = false}) : super(key: key);

  final appItem passedItem;
  final bool isTrailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(passedItem.name),
        leading: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(passedItem.image),
        ),
        trailing: isTrailing ? (Icon(Icons.arrow_right)) : (null),
        onTap: () {
          if (!isTrailing) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => detail_screen(passedItem: passedItem),
              ),
            );
          } else {
            context.read<app_item_provider>().addNewOnlineItem(passedItem);
            showDialog(
              context: context,
              builder: (BuildContext context) {
                Future.delayed(
                  Duration(seconds: 1),
                  () {
                    Navigator.of(context).pop(true);
                    Navigator.of(context).pop(true);
                  },
                );
                return custom_dialog();
              },
            );
          }
        },
      ),
    );
  }
}

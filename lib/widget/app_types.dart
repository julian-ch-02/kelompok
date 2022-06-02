import 'package:flutter/material.dart';
import 'package:kelompok/provider/type_provider.dart';
import 'package:provider/provider.dart';

class app_types extends StatelessWidget {
  app_types({Key? key, required this.itemType, required this.item}) : super(key: key);

  List itemType;
  String item;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemType.length,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Text(itemType[index]),
          leading: Radio<String>(
            value: itemType[index],
            groupValue: item,
            onChanged: (String? value) {
              context.read<type_provider>().setItem(value);
            },
          ),
        );
      },
    );
  }
}

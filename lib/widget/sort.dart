import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kelompok/provider/app_item_provider.dart';

class sort extends StatelessWidget {
  sort({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<app_item_provider>().sorting();
      },
      icon: Icon(
        Icons.sort,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kelompok/provider/theme_provider.dart';
import 'package:kelompok/widget/appItemList.dart';
import 'package:kelompok/widget/drawer.dart';
import 'package:kelompok/screen/new_screen.dart';
import 'package:provider/provider.dart';

class main_screen extends StatelessWidget {
  main_screen({Key? key, required this.title, required this.theme}) : super(key: key);

  final String title;
  final bool theme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
        automaticallyImplyLeading: true,
        actions: [
          Container(
            child: Switch(
              value: theme,
              onChanged: (value) {
                context.read<theme_provider>().setTheme();
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => new_screen()),
          );
        },
        child: Icon(
          Icons.add,
        ),
      ),
      drawer: drawer(),
      body: appItemList(),
    );
  }
}

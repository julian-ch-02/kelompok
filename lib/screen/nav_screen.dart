import 'package:flutter/material.dart';
import 'package:kelompok/widget/privacy_widget.dart';
import 'package:kelompok/widget/setting_widget.dart';

class nav_screen extends StatelessWidget {
  const nav_screen({Key? key, required this.title}) : super(key: key);
  final String title;

  body(BuildContext context) {
    if (title == 'Setting') {
      return setting_widget();
    } else {
      return privacy_widget();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: body(context),
    );
  }
}

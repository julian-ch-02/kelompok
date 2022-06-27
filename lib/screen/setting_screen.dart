import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class setting_screen extends StatelessWidget {
  const setting_screen({Key? key, required this.title, required this.widget}) : super(key: key);

  final String title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: widget,
    );
  }
}

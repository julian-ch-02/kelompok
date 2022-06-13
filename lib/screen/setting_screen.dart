import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class setting_screen extends StatelessWidget {
  const setting_screen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}

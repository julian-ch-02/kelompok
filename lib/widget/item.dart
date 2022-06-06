import 'package:flutter/material.dart';

class item extends StatelessWidget {
  item({Key? key, required this.title, required this.image}) : super(key: key);

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(title),
        leading: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(image),
        ),
      ),
    );
  }
}

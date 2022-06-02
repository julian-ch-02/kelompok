import 'package:flutter/material.dart';
import 'package:kelompok/widget/register/container.dart';

class new_screen extends StatelessWidget {
  new_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05,
          horizontal: MediaQuery.of(context).size.width * 0.15,
        ),
        child: Card(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(
              MediaQuery.of(context).size.height * 0.025,
            ),
            child: const container(),
          ),
        ),
      ),
    );
  }
}

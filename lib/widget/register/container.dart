import 'package:flutter/material.dart';
import 'package:kelompok/provider/add_screen_provider.dart';
import 'package:provider/provider.dart';

class container extends StatelessWidget {
  const container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.watch<add_screen_provider>().getScreen;
  }
}

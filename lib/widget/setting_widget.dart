import 'package:flutter/material.dart';
import 'package:kelompok/screen/setting_screen.dart';

class setting_widget extends StatelessWidget {
  setting_widget({Key? key}) : super(key: key);

  List<Map> settingItems = [
    {'icon': Icons.lock, 'name': 'Sandi & Keamanan'},
    {'icon': Icons.palette, 'name': 'Tampilan'},
    {'icon': Icons.chat, 'name': 'Bahasa'},
    {'icon': Icons.shield, 'name': 'Verifikasi Privasi'}
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: settingItems.length,
      itemBuilder: (BuildContext context, index) {
        return ListTile(
          title: Text(settingItems[index]['name']),
          leading: Icon(
            settingItems[index]['icon'],
          ),
          trailing: const Icon(
            Icons.arrow_right,
          ),
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) =>
                    setting_screen(title: settingItems[index]['name']),
              ),
            );
          },
        );
      },
    );
  }
}

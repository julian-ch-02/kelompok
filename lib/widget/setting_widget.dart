import 'package:flutter/material.dart';
import 'package:kelompok/screen/setting_screen.dart';
import 'package:kelompok/widget/language_widget.dart';
import 'package:kelompok/widget/privacy_verification_widget.dart';
import 'package:kelompok/widget/appearance_widget.dart';
import 'package:kelompok/widget/security_widget.dart';

class setting_widget extends StatelessWidget {
  setting_widget({Key? key}) : super(key: key);

  List<Map> settingItems = [
    {
      'icon': Icons.lock,
      'name': 'Sandi & Keamanan',
      'widget': security_widget(),
    },
    {
      'icon': Icons.palette,
      'name': 'Tampilan',
      'widget': appearance_widget(),
    },
    {
      'icon': Icons.chat,
      'name': 'Bahasa',
      'widget': language_widget(),
    },
    {
      'icon': Icons.shield,
      'name': 'Verifikasi Privasi',
      'widget': privacy_verification_widget(),
    }
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
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => setting_screen(
                  title: settingItems[index]['name'],
                  widget: settingItems[index]['widget'],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

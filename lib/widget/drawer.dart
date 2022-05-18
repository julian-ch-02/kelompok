import 'package:flutter/material.dart';
import 'package:kelompok/model/menuItem.dart';
import 'package:kelompok/screen/nav_screen.dart';

class drawer extends StatelessWidget {
  drawer({Key? key}) : super(key: key);
  final List<menuItem> items = [
    menuItem(
      label: '',
      icon: Icons.arrow_back,
      back: false,
    ),
    menuItem(
      label: 'Setting',
      icon: Icons.settings,
      back: true,
    ),
    menuItem(
      label: 'Terms & Conditions',
      icon: Icons.menu_book,
      back: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: items.map((item) {
          return Container(
            decoration: !item.back
                ? BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  )
                : BoxDecoration(),
            child: ListTile(
              title: Text(item.label),
              leading: Icon(item.icon),
              trailing: item.back ? Icon(Icons.arrow_forward_ios) : SizedBox(),
              onTap: () {
                Navigator.pop(context);
                if (item.back) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => nav_screen(title: item.label)),
                  );
                }
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}

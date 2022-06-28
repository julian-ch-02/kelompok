import 'package:flutter/material.dart';
import 'package:kelompok/screen/pin_screen.dart';

class security_widget extends StatefulWidget {
  security_widget({Key? key}) : super(key: key);

  @override
  State<security_widget> createState() => _security_widgetState();
}

class _security_widgetState extends State<security_widget> {
  bool isPrivateApp = false;
  bool isPrivateOnline = false;

  @override
  Widget build(BuildContext context) {
    List<Map> securityItems = [
      {
        'text': 'Perlindungan Privasi / Aplikasi',
        'trailing_item': Switch(
          value: isPrivateApp,
          onChanged: (val) {
            setState(
              () {
                isPrivateApp = val;
              },
            );
          },
        )
      },
      {
        'text': 'Ganti Pin',
        'trailing_item': const Icon(
          Icons.arrow_right,
        )
      },
      {
        'text': 'Aktifkan Mode Privasi Online',
        'trailing_item': Switch(
          value: isPrivateOnline,
          onChanged: (val) {
            setState(
              () {
                isPrivateOnline = val;
              },
            );
          },
        )
      },
    ];
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.05,
          ),
          child: Center(
            child: Image.asset(
              'assets/images/mode_kunci.png',
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          child: ListView.builder(
            itemCount: securityItems.length,
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                title: Text(securityItems[index]['text']),
                trailing: securityItems[index]['trailing_item'],
                onTap: () {
                  if (securityItems[index]['text'] == 'Ganti Pin') {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => pin_screen(),
                      ),
                    );
                  }
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

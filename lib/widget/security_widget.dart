import 'package:flutter/material.dart';
//import 'package:kelompok/screen/pin_screen.dart';

class security_widget extends StatelessWidget {
  security_widget({Key? key}) : super(key: key);

  List<Map> securityItems = [
    {
      'text': 'Perlindungan privasi / aplikasi',
      'trailing_item': Switch(
        value: false,
        activeColor: Colors.white,
        onChanged: (val) {},
      )
    },
    {
      'text': 'Ganti Pin',
      'trailing_item': const Icon(
        Icons.arrow_right,
      )
    },
    {
      'text': 'Aktifkan mode privasi online',
      'trailing_item': Switch(
        value: false,
        activeColor: Colors.white,
        onChanged: (val) {},
      )
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset(
            'assets/images/mode_kunci.png',
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
                    //Navigator.of(context).pushReplacement(
                    //MaterialPageRoute(
                    //builder: (context) => pin_screen(),
                    //),
                    //);
                  }
                  // Navigator.of(context).pushReplacement(
                  //   MaterialPageRoute(
                  //     builder: (context) =>
                  //         setting_screen(title: settingItems[index]['name']),
                  //   ),
                  // );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

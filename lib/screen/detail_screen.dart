import 'package:flutter/material.dart';
import 'package:kelompok/model/appItem.dart';
import 'package:kelompok/screen/edit_screen.dart';

class detail_screen extends StatelessWidget {
  detail_screen({Key? key, required this.passedItem}) : super(key: key);

  final appItem passedItem;

  @override
  Widget build(BuildContext context) {
    Map objectItem = passedItem.toMap();

    List<Map> appDesc = [
      {
        'value': 'name',
        'label': 'Nama Aplikasi',
      },
      {
        'value': 'usernamePlayer',
        'label': 'Username',
      },
      {
        'value': 'passwordPlayer',
        'label': 'Password',
      },
      {
        'value': 'emailPlayer',
        'label': 'Email',
      },
      {
        'value': 'phonePlayer',
        'label': 'No. Hp',
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(passedItem.name),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 15,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  margin: EdgeInsets.all(
                    MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: appDesc.map(
                              (desc) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.005),
                                  child: Text(desc['label']),
                                );
                              },
                            ).toList(),
                          ),
                          Column(
                            children: appDesc.map(
                              (desc) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.005),
                                  child: Text(':'),
                                );
                              },
                            ).toList(),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: appDesc.map(
                              (desc) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.005),
                                  child: Text(
                                    objectItem[desc['value']],
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.05,
                          bottom: MediaQuery.of(context).size.height * 0.025,
                        ),
                        child: Text('INFORMASI LAINNYA'),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.005),
                        child: Text(
                          objectItem['description'],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                child: Text('edit'),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => edit_screen(
                        objectItem: objectItem,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

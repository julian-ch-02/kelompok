import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kelompok/provider/theme_provider.dart';

class appearance_widget extends StatelessWidget {
  appearance_widget({Key? key}) : super(key: key);

  List<Map> listGradient = [
    {
      'decoration': const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.white,
            Colors.blue,
          ],
        ),
      ),
      'title': 'Mode Warna Cerah',
      'theme': false
    },
    {
      'decoration': const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.white,
            Colors.black,
          ],
        ),
      ),
      'title': 'Mode Warna Gelap',
      'theme': true
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 10,
            ),
            child: Text(
              'Skema Warna',
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: listGradient.map(
              (gradient) {
                return Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: gradient['decoration'],
                    ),
                    Text(
                      gradient['title'],
                    ),
                    ElevatedButton(
                      child: Center(
                        child: const Text('Apply'),
                      ),
                      onPressed: () {
                        context.read<theme_provider>().setOptionalTheme(
                              gradient['theme'],
                            );
                      },
                    ),
                  ],
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}

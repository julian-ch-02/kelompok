import 'package:flutter/material.dart';
import 'package:kelompok/widget/register/container.dart';

class appearance_widget extends StatelessWidget {
  appearance_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.all(10)),
        Text(
          'Skema Warna',
        ),
        Padding(padding: EdgeInsets.all(10)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('test'),
              style: ElevatedButton.styleFrom(primary: Colors.blue, minimumSize: Size(200, 200)),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('test'),
              style: ElevatedButton.styleFrom(primary: Colors.blue, minimumSize: Size(200, 200)),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(10)),
        Text("Ubah Mode Warna"),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('test'),
              style: ElevatedButton.styleFrom(primary: Colors.blue, minimumSize: Size(200, 200)),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('test'),
              style: ElevatedButton.styleFrom(primary: Colors.blue, minimumSize: Size(200, 200)),
            ),
          ],
        ),
      ],
    ));
  }
}

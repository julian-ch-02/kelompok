import 'package:flutter/material.dart';
import 'package:kelompok/widget/register/offline/category_information.dart';
import 'package:kelompok/widget/register/offline/player_information.dart';
import 'package:kelompok/widget/register/type.dart';
import 'package:provider/provider.dart';
import 'package:kelompok/provider/add_screen_provider.dart';

class other_information extends StatelessWidget {
  other_information({Key? key}) : super(key: key);

  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.025,
            ),
            child: TextFormField(
              maxLines: null,
              keyboardType: TextInputType.multiline,
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Informasi Lain'),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.01,
              ),
              child: ElevatedButton(
                child: Text('Back'),
                onPressed: () {
                  context
                      .read<add_screen_provider>()
                      .setScreen(player_information());
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Next'),
              onPressed: () {
                context
                    .read<add_screen_provider>()
                    .setScreen(category_information());
              },
            ),
          ],
        )
      ],
    );
  }
}

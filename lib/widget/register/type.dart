import 'package:flutter/material.dart';
import 'package:kelompok/provider/add_screen_provider.dart';
import 'package:kelompok/widget/app_types.dart';
import 'package:kelompok/provider/type_provider.dart';
import 'package:kelompok/provider/app_item_provider.dart';
import 'package:kelompok/widget/register/offline/player_information.dart';
import 'package:provider/provider.dart';

class type extends StatelessWidget {
  type({Key? key}) : super(key: key);

  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List itemType = context.read<type_provider>().getAllItems;
    String item = context.watch<type_provider>().getItem;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Masukkan Nama Aplikasi'),
        Container(
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.025,
          ),
          child: TextFormField(
            controller: nameController,
          ),
        ),
        Text('Mode :'),
        Expanded(
          child: app_types(itemType: itemType, item: item),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.01,
              ),
              child: ElevatedButton(
                child: Text('Cancel'),
                onPressed: () {
                  context.read<type_provider>().setItem('');
                  nameController.text = '';
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
                    .setScreen(player_information());
              },
            ),
          ],
        )
      ],
    );
  }
}

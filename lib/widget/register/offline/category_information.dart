import 'package:flutter/material.dart';
import 'package:kelompok/provider/app_item_provider.dart';
import 'package:kelompok/provider/type_provider.dart';
import 'package:kelompok/widget/register/type.dart';
import 'package:provider/provider.dart';
import 'package:kelompok/provider/add_screen_provider.dart';
import 'package:kelompok/widget/register/offline/other_information.dart';

class category_information extends StatefulWidget {
  category_information({Key? key}) : super(key: key);

  @override
  State<category_information> createState() => _category_informationState();
}

class _category_informationState extends State<category_information> {
  final List<String> _categories = [
    'Keamanan',
    'Permainan',
    'Musik',
    'Shopping',
    'Lainnya'
  ];

  final categoryController = TextEditingController();

  @override
  void initState() {
    Map tmpItem = context.read<app_item_provider>().getTempItem;
    categoryController.text =
        tmpItem['category'] == '' ? 'Keamanan' : tmpItem['category'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.025,
                ),
                child: DropdownButtonFormField(
                  onChanged: (e) {
                    context.read<app_item_provider>().setNewItem({
                      'category': e.toString(),
                    });
                  },
                  value: categoryController.text,
                  items: _categories.map(
                    (category) {
                      return DropdownMenuItem(
                        child: Text(category),
                        value: category,
                      );
                    },
                  ).toList(),
                  decoration: InputDecoration(
                    labelText: 'Jenis Aplikasi',
                  ),
                ),
              ),
            ],
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
                      .setScreen(other_information());
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Next'),
              onPressed: () {
                context.read<app_item_provider>().addNewItem();
                Navigator.of(context).pop();
                context.read<add_screen_provider>().setScreen(type());
                context.read<type_provider>().setItem('');
              },
            ),
          ],
        )
      ],
    );
  }
}

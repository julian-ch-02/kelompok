import 'package:flutter/material.dart';
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
                    setState(() {
                      categoryController.text = e.toString();
                    });
                  },
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
              if (categoryController.text == 'Lainnya')
                Container(
                  margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.025,
                  ),
                  child: TextFormField(
                    controller: categoryController,
                    decoration: InputDecoration(
                      labelText: categoryController.text,
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
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}

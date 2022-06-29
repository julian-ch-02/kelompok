import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kelompok/provider/app_item_provider.dart';

class edit_screen extends StatelessWidget {
  edit_screen({Key? key, required this.objectItem}) : super(key: key);

  Map objectItem;
  late TextEditingController usernameController = TextEditingController(
    text: objectItem['usernamePlayer'],
  );
  late TextEditingController passwordController = TextEditingController(
    text: objectItem['passwordPlayer'],
  );
  late TextEditingController emailController = TextEditingController(
    text: objectItem['emailPlayer'],
  );
  late TextEditingController phoneController = TextEditingController(
    text: objectItem['phonePlayer'],
  );
  late TextEditingController descriptionController = TextEditingController(
    text: objectItem['description'],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EDIT'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.2,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                  bottom: MediaQuery.of(context).size.height * 0.025,
                ),
                child: CircleAvatar(
                  radius: 40,
                  child: objectItem['image'] != ''
                      ? const SizedBox()
                      : Text(
                          objectItem['name'] == '' ? '' : objectItem['name'][0],
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                  backgroundImage: FileImage(
                    File(objectItem['image']),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.025,
                ),
                child: TextFormField(
                  controller: usernameController,
                  onChanged: (value) {
                    objectItem['usernamePlayer'] = usernameController.text;
                  },
                  decoration: InputDecoration(labelText: 'Username'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.025,
                ),
                child: TextFormField(
                  onChanged: (value) {
                    objectItem['passwordPlayer'] = passwordController.text;
                  },
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(labelText: 'Password'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.025,
                ),
                child: TextFormField(
                  onChanged: (value) {
                    objectItem['emailPlayer'] = emailController.text;
                  },
                  controller: emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.025,
                ),
                child: TextFormField(
                  onChanged: (value) {
                    objectItem['phonePlayer'] = phoneController.text;
                  },
                  controller: phoneController,
                  decoration: InputDecoration(labelText: 'Nomor Hp'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.025,
                ),
                child: TextFormField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  controller: descriptionController,
                  onChanged: (value) {
                    objectItem['description'] = descriptionController.text;
                  },
                  decoration: InputDecoration(labelText: 'Informasi Lain'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.01,
                    ),
                    child: OutlineButton(
                      child: Text('cancel'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  ElevatedButton(
                    child: Text('selesai'),
                    onPressed: () {
                      context.read<app_item_provider>().editItem(objectItem);
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

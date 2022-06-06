import 'package:flutter/material.dart';
import 'package:kelompok/provider/app_item_provider.dart';
import 'package:kelompok/widget/register/type.dart';
import 'package:provider/provider.dart';
import 'package:kelompok/provider/add_screen_provider.dart';
import 'package:kelompok/widget/register/offline/other_information.dart';

class player_information extends StatefulWidget {
  player_information({Key? key}) : super(key: key);

  @override
  State<player_information> createState() => _player_informationState();
}

class _player_informationState extends State<player_information> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  final emailController = TextEditingController();

  final phoneController = TextEditingController();

  @override
  void initState() {
    Map tmpItem = context.read<app_item_provider>().getTempItem;
    usernameController.text = tmpItem['usernamePlayer'];
    passwordController.text = tmpItem['passwordPlayer'];
    emailController.text = tmpItem['emailPlayer'];
    phoneController.text = tmpItem['phonePlayer'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.025,
                  ),
                  child: TextFormField(
                    controller: usernameController,
                    onChanged: (value) {
                      context.read<app_item_provider>().setNewItem({
                        'usernamePlayer': usernameController.text,
                      });
                    },
                    decoration: InputDecoration(labelText: 'Username'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.025,
                  ),
                  child: TextFormField(
                    controller: passwordController,
                    onChanged: (value) {
                      context.read<app_item_provider>().setNewItem({
                        'passwordPlayer': passwordController.text,
                      });
                    },
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.025,
                  ),
                  child: TextFormField(
                    controller: emailController,
                    onChanged: (value) {
                      context.read<app_item_provider>().setNewItem({
                        'emailPlayer': emailController.text,
                      });
                    },
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.025,
                  ),
                  child: TextFormField(
                    controller: phoneController,
                    onChanged: (value) {
                      context.read<app_item_provider>().setNewItem({
                        'phonePlayer': phoneController.text,
                      });
                    },
                    decoration: InputDecoration(labelText: 'Phone'),
                  ),
                ),
              ],
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
                  context.read<add_screen_provider>().setScreen(type());
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
                    .setScreen(other_information());
              },
            ),
          ],
        )
      ],
    );
  }
}

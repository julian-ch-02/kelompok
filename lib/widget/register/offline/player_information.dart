import 'package:flutter/material.dart';
import 'package:kelompok/widget/register/type.dart';
import 'package:provider/provider.dart';
import 'package:kelompok/provider/add_screen_provider.dart';
import 'package:kelompok/widget/register/offline/other_information.dart';

class player_information extends StatelessWidget {
  player_information({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

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
                    decoration: InputDecoration(labelText: 'Username'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.025,
                  ),
                  child: TextFormField(
                    controller: passwordController,
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
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.025,
                  ),
                  child: TextFormField(
                    controller: phoneController,
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

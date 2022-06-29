import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class privacy_verification_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      body: Container(
          alignment: FractionalOffset.topCenter,
          child: Padding(
              padding: EdgeInsets.all(
                20,
              ),
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color.fromARGB(255, 56, 56, 56),
                  child: InkWell(
                      child: Container(
                          padding: EdgeInsets.all(30),
                          child: Column(children: [
                            RichText(
                              text: TextSpan(
                                text: 'Aksi Perizinan\n',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Mengelola aplikasi yang meminta perizinan sensitif ',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 194, 194, 194),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(35, 5, 0, 0),
                              child: Column(
                                children: [
                                  Card(
                                    elevation: 0,
                                    color: Colors.transparent,
                                    child: ListTile(
                                      tileColor: Colors.transparent,
                                      leading: Icon(
                                        Icons.location_pin,
                                        color: Colors.white,
                                      ),
                                      title: Text('Lokasi', style: TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                  Card(
                                    elevation: 0,
                                    color: Colors.transparent,
                                    child: ListTile(
                                      tileColor: Colors.transparent,
                                      leading: Icon(
                                        Icons.people_alt_rounded,
                                        color: Colors.white,
                                      ),
                                      title: Text('Kontak', style: TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                  Card(
                                    elevation: 0,
                                    color: Colors.transparent,
                                    child: ListTile(
                                      tileColor: Colors.transparent,
                                      leading: Icon(
                                        Icons.phone,
                                        color: Colors.white,
                                      ),
                                      title: Text('Log Panggilan', style: TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                  Card(
                                    elevation: 0,
                                    color: Colors.transparent,
                                    child: ListTile(
                                      tileColor: Colors.transparent,
                                      leading: Icon(
                                        Icons.folder,
                                        color: Colors.white,
                                      ),
                                      title: Text('Data User', style: TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(height: 10, color: Colors.transparent),
                            ElevatedButton(
                              child: const Text('Aktifkan Perizinan'),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.purple,
                                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                  textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                            ),
                          ])))))));
}

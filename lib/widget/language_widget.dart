import 'package:flutter/material.dart';

class language_widget extends StatelessWidget {
  List<Map> assetImages = [
    {'image': 'assets/images/Indonesia.png', 'title': 'Indonesia'},
    {'image': 'assets/images/English.png', 'title': 'English'},
    {'image': 'assets/images/Spanish.png', 'title': 'Spanish'},
    {'image': 'assets/images/Italian.png', 'title': 'Italian'},
    {'image': 'assets/images/French.png', 'title': 'French'},
    {'image': 'assets/images/Deutsch.png', 'title': 'Deutsch'},
    {'image': 'assets/images/Japanese.png', 'title': 'Japanese'},
    {'image': 'assets/images/Chinese.png', 'title': 'Chinese'},
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: assetImages.map(
              (data) {
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.01,
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(
                          width: 1.5,
                          color: Colors.grey,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {},
                    child: ListTile(
                      leading: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: 44,
                          minHeight: 40,
                          maxWidth: 60,
                          maxHeight: 64,
                        ),
                        child: Image.asset(data['image'], fit: BoxFit.cover),
                      ),
                      title: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            data['title'],
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          )),
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ));
}

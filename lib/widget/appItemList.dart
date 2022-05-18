import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kelompok/model/appItem.dart';
import 'package:kelompok/widget/item.dart';
import 'package:image_picker/image_picker.dart';

class appItemList extends StatelessWidget {
  appItemList({Key? key}) : super(key: key);
  List<appItem> _items = [
    appItem(
      name: 'Clash of Clans',
      image: Image.asset(
        'packages/kelompok/images/clashofclans.png',
      ),
      type: false,
    ),
    appItem(
      name: 'Whatsapp',
      image: Image.asset(
        'packages/kelompok/images/whatsapp.png',
      ),
      type: true,
    ),
  ];

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(source: ImageSource.gallery, maxWidth: 1800, maxHeight: 1800);
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    Iterable offlineApp = _items.where((item) => item.type == false);
    Iterable onlineApp = _items.where((item) => item.type == true);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('offline (${offlineApp.length})'),
          Flexible(
            child: ListView.builder(
              itemCount: offlineApp.length,
              itemBuilder: (context, index) {
                return Semantics(
                  label: 'image_picker_example_from_gallery',
                  child: FloatingActionButton(
                    onPressed: () {
                      _getFromGallery();
                    },
                    heroTag: 'image0',
                    tooltip: 'Pick Image from gallery',
                    child: const Icon(Icons.photo),
                  ),
                );
                //return item(
                //title: offlineApp.toList()[index].name,
                //image: offlineApp.toList()[index].image,
                //);
              },
            ),
          ),
          Text('online (${onlineApp.length})'),
          Flexible(
            child: ListView.builder(
              itemCount: onlineApp.length,
              itemBuilder: (context, index) {
                return item(
                  title: onlineApp.toList()[index].name,
                  image: onlineApp.toList()[index].image,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

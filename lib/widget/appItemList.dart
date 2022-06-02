import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kelompok/model/appItem.dart';
import 'package:kelompok/widget/item.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:kelompok/provider/app_item_provider.dart';

class appItemList extends StatelessWidget {
  appItemList({Key? key}) : super(key: key);

  //_getFromGallery() async {
  //PickedFile? pickedFile = await ImagePicker().getImage(source: ImageSource.gallery, maxWidth: 1800, maxHeight: 1800);
  //if (pickedFile != null) {
  //File imageFile = File(pickedFile.path);
  //final directory = await getApplicationDocumentsDirectory();
  //String fileName = basename(imageFile.path);
  //File localImage = await imageFile.copy('${directory.path}/$fileName');
  //}
  //}

  @override
  Widget build(BuildContext context) {
    List<appItem> _items = context.watch<app_item_provider>().getAllItems;
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
                //return Semantics(
                //label: 'image_picker_example_from_gallery',
                //child: FloatingActionButton(
                //onPressed: () {
                //_getFromGallery();
                //},
                //heroTag: 'image0',
                //tooltip: 'Pick Image from gallery',
                //child: const Icon(Icons.photo),
                //),
                //);
                return item(
                  title: offlineApp.toList()[index].name,
                  image: offlineApp.toList()[index].image,
                );
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

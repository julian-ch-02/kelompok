import 'package:flutter/cupertino.dart';

class appItem {
  int id;
  late final String name;
  late final String usernamePlayer;
  late final String passwordPlayer;
  late final String emailPlayer;
  late final String phonePlayer;
  late final String description;
  late final String image;
  late final String category;
  late final bool type;

  appItem({
    this.id = 0,
    required this.name,
    required this.image,
    required this.type,
    required this.usernamePlayer,
    required this.passwordPlayer,
    required this.emailPlayer,
    required this.phonePlayer,
    this.description = '',
    this.category = '',
  });

  factory appItem.fromMap(Map map) {
    return appItem(
      id: map['id'] as int,
      name: map['name'] as String,
      image: map['image'] as String,
      type: map['type'] as bool,
      usernamePlayer: map['usernamePlayer'] as String,
      passwordPlayer: map['passwordPlayer'] as String,
      emailPlayer: map['emailPlayer'] as String,
      phonePlayer: map['phonePlayer'] as String,
      description: map['description'] as String,
      category: map['category'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'type': type,
      'usernamePlayer': usernamePlayer,
      'passwordPlayer': passwordPlayer,
      'emailPlayer': emailPlayer,
      'phonePlayer': phonePlayer,
      'description': description,
      'category': category,
    };
  }
}

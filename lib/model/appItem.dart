import 'package:flutter/cupertino.dart';

class appItem {
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
}

import 'package:flutter/cupertino.dart';

class appItem {
  late final String name;
  late final String usernamePlayer;
  late final String passwordPlayer;
  late final String emailPlayer;
  late final String phonePlayer;
  late final String description;
  late final Image image;
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
  });
}

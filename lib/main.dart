import 'package:flutter/material.dart';
import 'package:kelompok/provider/theme_provider.dart';
import 'package:kelompok/provider/type_provider.dart';
import 'package:kelompok/provider/app_item_provider.dart';
import 'package:kelompok/provider/add_screen_provider.dart';
import 'package:kelompok/provider/pin_provider.dart';
import 'package:kelompok/screen/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<theme_provider>(
          create: (_) => theme_provider(),
        ),
        ChangeNotifierProvider<type_provider>(
          create: (_) => type_provider(),
        ),
        ChangeNotifierProvider<app_item_provider>(
          create: (_) => app_item_provider(),
        ),
        ChangeNotifierProvider<add_screen_provider>(
          create: (_) => add_screen_provider(),
        ),
        ChangeNotifierProvider<pin_provider>(
          create: (_) => pin_provider(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool _theme = context.watch<theme_provider>().getTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
          headline6: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        switchTheme: SwitchThemeData(
          trackColor: MaterialStateProperty.all(
            Colors.blue[900],
          ),
        ),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.grey,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
          headline6: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStateProperty.all(
            Colors.black,
          ),
        ),
      ),
      themeMode: _theme == true ? ThemeMode.dark : ThemeMode.light,
      home: main_screen(
        title: '',
        theme: _theme,
      ),
    );
  }
}

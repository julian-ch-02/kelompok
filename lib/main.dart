import 'package:flutter/material.dart';
import 'package:kelompok/provider/theme_provider.dart';
import 'package:kelompok/screen/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<theme_provider>(
          create: (_) => theme_provider(),
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        switchTheme: SwitchThemeData(
          trackColor: MaterialStateProperty.all(
            Colors.blue[900],
          ),
        ),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.grey,
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

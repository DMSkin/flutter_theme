import 'package:flutter/material.dart';
import 'package:flutter_theme_demo/pages/home_page.dart';
import 'package:flutter_theme_demo/styles/button_style.dart';
import 'package:flutter_theme_demo/services/theme_service.dart';
import 'package:flutter_theme_demo/styles/textfieid_style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeService themeService = ThemeService.getInstance;

  @override
  void initState() {
    super.initState();
    themeService.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: themeService.themeMode,
      // 白色主题
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.light(
          primary: const Color.fromRGBO(68, 138, 255, 1),
        ),
        useMaterial3: true,
        filledButtonTheme: FilledButtonThemeData(style: filledButtonStyle),
        inputDecorationTheme: inputDecorationTheme,
        cardTheme: CardTheme(
          color: Color(0xFFFAFAFA),
        ),
      ),
      // 黑色主题
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.dark(
          primary: const Color.fromARGB(255, 0, 31, 81),
        ),
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent,
        ),
        useMaterial3: true,
        filledButtonTheme: filledButtonDarkTheme,
        inputDecorationTheme: inputDecorationDarkTheme,
        cardTheme: CardTheme(
          color: Color(0xFF141414),
        ),
      ),
      home: const HomePage(),
    );
  }
}

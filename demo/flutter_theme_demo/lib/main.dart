import 'package:flutter/material.dart';
import 'package:flutter_theme_demo/home_page.dart';
import 'package:flutter_theme_demo/styles/button_style.dart';
import 'package:flutter_theme_demo/theme_service.dart';

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
          primary: Colors.blueAccent,
        ),
        useMaterial3: true,
        filledButtonTheme: FilledButtonThemeData(style: filledButtonStyle),
      ),
      // 黑色主题
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.dark(
          primary: Colors.blueAccent,
        ),
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent,
        ),
        useMaterial3: true,
        filledButtonTheme: FilledButtonThemeData(style: filledButtonStyle),
      ),
      home: const HomePage(),
    );
  }
}

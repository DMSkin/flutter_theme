import 'package:flutter/material.dart';
import 'package:flutter_theme_demo/services/theme_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter 主题"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            spacing: 10,
            children: [
              FilledButton(
                onPressed: () {
                  ThemeService.getInstance.changeTheme(ThemeMode.light);
                },
                child: Text("白色主题"),
              ),
              FilledButton(
                onPressed: () {
                  ThemeService.getInstance.changeTheme(ThemeMode.dark);
                },
                child: Text("黑色主题"),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: Card(
              child: Center(child: Text("默认Card")),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: themeData.cardTheme.color,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(child: Text("色差Card")),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(hintText: "输入用户名"),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(hintText: "输入密码"),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "bodyLarge",
            style: themeData.textTheme.bodyLarge,
          ),
          Text(
            "bodyMedium",
            style: themeData.textTheme.bodyMedium,
          ),
          Text(
            "bodySmall",
            style: themeData.textTheme.bodySmall,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "labelLarge",
            style: themeData.textTheme.labelLarge,
          ),
          Text(
            "labelMedium",
            style: themeData.textTheme.labelMedium,
          ),
          Text(
            "labelSmall",
            style: themeData.textTheme.labelSmall,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

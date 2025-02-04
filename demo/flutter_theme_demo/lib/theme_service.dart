import 'package:flutter/material.dart';

class ThemeService with ChangeNotifier {
  static ThemeService? _themeService;
  static ThemeService get getInstance {
    _themeService ??= ThemeService();
    return _themeService!;
  }

  get themeMode => _themeMode;
  ThemeMode _themeMode = ThemeMode.light;

  // 切换为黑色主题
  void changeTheme(ThemeMode theme) {
    _themeMode = theme;
    notifyListeners();
  }
}

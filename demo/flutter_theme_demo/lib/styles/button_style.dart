import 'package:flutter/material.dart';

/// 默认的填充按钮样式
ButtonStyle filledButtonStyle = ButtonStyle(
  shape: WidgetStatePropertyAll(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
);

/// 默认的填充按钮样式 - 黑色
FilledButtonThemeData filledButtonDarkTheme = FilledButtonThemeData(
  style: ButtonStyle(
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    foregroundColor: WidgetStatePropertyAll(Colors.white),
  ),
);

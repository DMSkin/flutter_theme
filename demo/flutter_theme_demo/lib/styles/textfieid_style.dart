import 'package:flutter/material.dart';

InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  hintStyle: TextStyle(color: Color(0xFF999999)),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey.shade300,
    ),
    borderRadius: BorderRadius.circular(8),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey.shade100,
    ),
    borderRadius: BorderRadius.circular(8),
  ),
);

InputDecorationTheme inputDecorationDarkTheme = InputDecorationTheme(
  hintStyle: TextStyle(color: Color(0xFF999999)),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0x60FFFFFF),
    ),
    borderRadius: BorderRadius.circular(8),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0x20FFFFFF),
    ),
    borderRadius: BorderRadius.circular(8),
  ),
);

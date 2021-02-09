import 'package:club_walk_mock/home_page.dart';
import 'package:club_walk_mock/theme/theme_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      home: Home(),
    );
  }
}

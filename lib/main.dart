import 'package:flutter/material.dart';
import 'package:shope_app/modules/screens/on_bording_screen.dart';
import 'package:shope_app/style/thems.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,

      home:const OnBoardingSCreen(),
    );
  }
}
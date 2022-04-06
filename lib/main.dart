import 'package:flutter/material.dart';
import 'package:projectdrawer/pages/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter - Belajar Drawer",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

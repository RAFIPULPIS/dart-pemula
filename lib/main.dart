import 'package:asik/GridView.dart';
import 'package:asik/ListView.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'DetailPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Home/',
      routes: {
        'Home/': (context) => HomePage(),
        'Detail/': (context) => DetailPage(),
        'List/': (context) => ListViewPage(),
        'Grid/': (context) => GridViewPage(),
      },
    );
  }
}

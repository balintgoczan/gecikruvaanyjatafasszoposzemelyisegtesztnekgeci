import 'package:flutter/material.dart';
import 'package:pt/pages/ui/home_page.dart';
import 'package:pt/pages/ui/pt.dart';
import 'package:pt/pages/ui/results.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

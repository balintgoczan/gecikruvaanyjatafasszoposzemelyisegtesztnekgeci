// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PT extends StatefulWidget {
  const PT({super.key});

  @override
  State<PT> createState() => _PTState();
}

class _PTState extends State<PT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: Center(
            child: Text(
          'Gecire P.T.',
          style: TextStyle(color: Colors.white),
        )),
      ),
      // body:
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pt/pages/ui/pt.dart';
import './pt.dart'; // Import the SecondPage

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.red[400],
        title: const Center(child: Text('Personality test')),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PT()),
            );
          },
          child: const Text('Go to personality test'),
        ),
      ),
    );
  }
}

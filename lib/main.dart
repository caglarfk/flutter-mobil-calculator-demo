import 'package:flutter/material.dart';

import 'homeScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Hesap  Makinesi",
      home: BasicScaft(),
    );
  }
}

class BasicScaft extends StatelessWidget {
  const BasicScaft({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hesap makinesi"),
      ),
      body: const HomeScreen(),
    );
  }
}



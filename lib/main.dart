import 'package:flutter/material.dart';
import 'drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const header = "XII RPL 2";
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: header),
    );
  }
}

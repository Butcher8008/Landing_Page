import 'package:flutter/material.dart';
import 'package:newfrontend/widgets/Appbar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Appbar(),
    );
  }
}

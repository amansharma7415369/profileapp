import 'package:flutter/material.dart';
import 'package:profileapp/MyAppBar.dart';

void main() {
  runApp(const MyprofileApp());
}

class MyprofileApp extends StatelessWidget {
  const MyprofileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppBar(),
    );
  }
}

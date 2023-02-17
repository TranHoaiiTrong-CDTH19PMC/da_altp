import 'package:flutter/material.dart';
import 'dangnhap.dart';

void main(List<String> args) async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: dangnhapScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

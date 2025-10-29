import 'package:flutter/material.dart';
import 'package:flutter_uandi/Home_screen.dart';
import 'record_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //상단 디버그 글씨 지우기
      home: HomeScreen(),
    );
  }
}

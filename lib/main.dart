import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_uandi/home/home_page.dart';
import 'package:flutter_uandi/view/Home_screen.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
      ),
  );
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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 146, 231, 0)),
        highlightColor: const Color.fromARGB(255, 196, 213, 14),

        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        )
      ),
      debugShowCheckedModeBanner: false, //상단 디버그 글씨 지우기
      home: HomeScreen(),
    );
  }
}

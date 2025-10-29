


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_uandi/home/home_view_model.dart';

class HomeBottomNavigationBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
      final currentIndex = ref.watch(homeviewModel);
      final viewModel = ref.read(homeviewModel.notifier);
      return BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.house_outlined),
        label: 'home',
        ),
         BottomNavigationBarItem(icon: Icon(Icons.house_outlined),
         label: 'cart',
        ),
         BottomNavigationBarItem(icon: Icon(Icons.house_outlined),
         label: 'my page',
        ),
      ]);
    },);
  }
}



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
      return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: viewModel.onIndexChanged,
        iconSize: 28,
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
        ),
        
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.house_outlined),
        activeIcon: Icon(Icons.home),
        label: '홈',
        tooltip: '홈',
        ),
         BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_2),
         activeIcon: Icon(CupertinoIcons.chat_bubble_2_fill),
         label: '채팅',
         tooltip: '채탕'
        ),
         BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart),
         activeIcon: Icon(CupertinoIcons.cart_fill) ,
         label: '장바구니',
         tooltip: '장바구니'
        ),
      ]);
    },);
  }
}



import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_uandi/home/_tap/chat_tab/chat_tab.dart';
import 'package:flutter_uandi/home/_tap/home_tab/home_tab.dart';
import 'package:flutter_uandi/home/_tap/my_tab/my_tab.dart';
import 'package:flutter_uandi/home/home_view_model.dart';

class HomeIndexedStack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final currentIndex = ref.watch(homeviewModel);
      return IndexedStack(
        children: [
          HomeTab(),
          ChatTab(),
          MyTab(),
        ],
      );
    });
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_uandi/home/home_view_model.dart';

class HomeFloatingActionButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Consumer(
    builder: (Context, ref, child) {

      final currentIndex = ref.watch(homeviewModel);
      if (currentIndex )
    })
  }
}
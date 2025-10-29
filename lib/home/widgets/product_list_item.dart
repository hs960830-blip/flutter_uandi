


import 'package:flutter/material.dart';
import 'package:flutter_uandi/home/widgets/home_tap_app_bar.dart';
import 'package:flutter_uandi/home/widgets/home_tap_list_view.dart';

class ProductListItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        children: [
          HomeTapAppBar(),
          HomeTapListView(),
        ],
      ),
    );
  }
}
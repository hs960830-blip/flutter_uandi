

import 'package:flutter/material.dart';

class HomeTapListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView.separated(
      itemBuilder: (context, index) {
        return Text('data');
      }, 
      separatorBuilder: (context, index) {
        return Divider(height: 20);
      }, 
      itemCount: 5
      ),
      );
  }
}
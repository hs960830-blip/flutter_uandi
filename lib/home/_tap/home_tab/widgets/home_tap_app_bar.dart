

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeTapAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('와사비 김밥 레코즈',
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 55, 55, 55)
      ),),
      actions: [
        GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('data'))
            );
          },
          child: Container(
            width: 50,
            height: 50,
            color:  Color.fromARGB(0, 223, 4, 4),
            child: Icon(CupertinoIcons.heart),
          ),
        )
      ],
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeTapAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('wasabi gimbab records'),
      actions: [
        GestureDetector(
          child: Container(
            width: 50,
            height: 50,
            color: const Color.fromARGB(0, 255, 0, 0),
            child: Icon(CupertinoIcons.heart),
          ),
        )
      ],
    );
  }
}
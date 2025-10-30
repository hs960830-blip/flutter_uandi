
// home_tap_app_bar.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTapAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeTapAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white, // iOS 느낌 유지
      title: const Text(
        '와사비 김밥 레코즈',
        style: TextStyle(
          color: Colors.black,
          fontSize: 17),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(CupertinoIcons.heart, color: Colors.red),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('data')),
            );
          },
        ),
      ],
      iconTheme: const IconThemeData(color: Colors.black),
    );
  }
}




//수정 전
/*
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
            child: Icon(CupertinoIcons.heart,
            color:  Colors.red,),
          ),
        )
      ],
    );
  }
}*/
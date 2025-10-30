import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_uandi/home/home_view_model.dart';
import 'package:flutter_uandi/view/record_create.dart';

class HomeFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final currentIndex = ref.watch(homeviewModel);
        if (currentIndex != 0) {
          return SizedBox();
        }

        return FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return RecordCreate(); //상품등록페이지 연결..
                },
              ),
            );
          },
          
          /*Text(
            '상품등록',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),*/
          shape: const CircleBorder(),
          child: const Icon(Icons.add, size: 28),
          backgroundColor: Theme.of(context).highlightColor,
          foregroundColor: const Color.fromARGB(255, 252, 255, 222),
        );
      },
    );
  }
}

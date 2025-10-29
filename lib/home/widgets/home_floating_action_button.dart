import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_uandi/home/home_view_model.dart';

class HomeFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (Context, ref, child) {
        final currentIndex = ref.watch(homeviewModel);
        if (currentIndex != 0) {
          return SizedBox();
        }

        return FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ProductWritePage(); //상품등록페이지 연결
                },
              ),
             );
          },
          label: Text(
            '상품등록',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          icon: Icon(Icons.add),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          backgroundColor: Theme.of(context).highlightColor,
          foregroundColor: Colors.white,
        );
      },
    );
  }
}

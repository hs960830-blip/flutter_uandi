

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RecordList extends StatefulWidget {
  const RecordList({super.key});

  RecordList(this.path, this.title);

  String path;
  String title;

  @override
  State<RecordList> createState() => _RecordListState();
}

class _RecordListState extends State<RecordList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('wasabi gimbab record',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold
        ),),
        actions: [
          Icon(CupertinoIcons.cart,
          size: 30,),
          SizedBox(width: 20)
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
            Padding(
            padding: EdgeInsets.symmetric(horizontal: 20)) ,
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assete/norahjoneslp.jpg'),
                  fit: BoxFit.contain),
              ),
            )
           // Image.asset('assets/norahjoneslp.jpg')
            ],
          ),
        ],
      ),
    );
  }
}












import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RecordList extends StatefulWidget {

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
          SizedBox(height: 10),
          Row(
            children: [
            Padding(
            padding: EdgeInsets.all(10)) ,
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/norahjoneslp.jpg'),
                  fit: BoxFit.contain),
              ),
            ),
           // Image.asset('assets/norahjoneslp.jpg')
            ],
          ),
        ],
      ),
    );
  }
}










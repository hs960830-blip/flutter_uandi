


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uandi/record_detail_page.dart';

class ProductListItem extends StatelessWidget{
 
 final String title;
 final String imagePath;
 final int price;
 final int stock;
 
 
 const ProductListItem({
  super.key,
  required this.title,
  required this. imagePath,
  required this. price,
  required this. stock,
 });
 
 
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        SizedBox(
          width: 120,
          height: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,)
            ],
          ))
      ],
    )
  }
   /* return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return RecordDetailPage();
        }));
      },
      child: Container(
        height: 120,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(12),
                child: Image.asset('assets/norahjoneslp.jpg',
                fit: BoxFit.cover,),
              ),
            ),
            SizedBox(width: 16),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Norah Jones Lp',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey
              ),),
              SizedBox(width:5),
              Text('55,000',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 95, 95, 95))),
              Text('재고 수량: 2',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 95, 95, 95))),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Icon(CupertinoIcons.heart,
                  size: 15,
                  ),
                  SizedBox(width: 4),
                  Text('0',
                  style: TextStyle(
                    fontSize: 12,
                    height: 1,
                  ),)
                ],)
              ]
            ))
          ],
        ),
      ),
    );
  }
}*/
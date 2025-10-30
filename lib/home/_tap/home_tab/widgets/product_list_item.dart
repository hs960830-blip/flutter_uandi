import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uandi/record_detail_page.dart';

class ProductListItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final int price;
  final int stock;

  const ProductListItem({
    super.key,
    required this.title,
    required this.imagePath,
    required this.price,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(               // ← 터치 영역
      onTap: () {
        // 눌렀을 때 상세 페이지로 이동
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const RecordDetailPage(),
          ),
        );
      },
      child: SizedBox(
        height: 120,
        width: double.infinity,
        child: Row(
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

            // 텍스트
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '$price',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5F5F5F),
                    ),
                  ),
                  Text(
                    '재고 수량: $stock',
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5F5F5F),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(CupertinoIcons.heart, size: 15, color: Colors.red),
                      SizedBox(width: 4),
                      Text('0', style: TextStyle(fontSize: 12, height: 1)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uandi/record_detail_page.dart';

class ProductListItem extends StatelessWidget {
  // 생성자에서 받을 변수 선언
  final String title;
  final String imagePath;
  final int price;
  final int stock;

  const ProductListItem({
    super.key,
    required this.title,
    required this.imagePath,
    required this.price,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const RecordDetailPage();
        }));
      },
      child: Container(
        height: 120,
        width: double.infinity,
        child: Row(
          children: [
            // 앨범 이미지
            Container(
              width: 120,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath, // 
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),

            // 텍스트 정보
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title, //Lp 이름 표시
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '${price.toString()}원', //가격 표시
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 95, 95, 95),
                    ),
                  ),
                  Text(
                    '재고 수량: $stock', //수량 표시
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 95, 95, 95),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(
                        CupertinoIcons.heart,
                        size: 15,
                        color: Colors.red,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '0',
                        style: TextStyle(
                          fontSize: 12,
                          height: 1,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/









//수정 전
/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_uandi/record_detail_page.dart';

class ProductListItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //눌렀을 때, 상세페이지 이동
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return RecordDetailPage(); // 언니가 만든 상세페이지와 연결
        }));
      },
      child: Container(
        height: 120,
        width: double.infinity,
        color: Colors.transparent,
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
                  color: Colors.red,
                  ),
                  SizedBox(width: 4),
                  Text('0',
                  style: TextStyle(
                    fontSize: 12,
                    height: 1,
                  ),)
                ],)
              ]
            )),
            
          ],
        ),
      ),
    );
  }
}


/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    //목록 리스트 생성자 파라미터 설정
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
              Text(title,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              )),
             const SizedBox(height: 5),
             Text('${price}원',
             style: const TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 95, 95, 95)
             )),
             Text('재고 수량: $stock',
             style: const TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 95, 95, 95)
             ))
            ],
          ))
      ],
    );
  }
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
} */*/*/
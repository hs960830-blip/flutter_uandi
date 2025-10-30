
import 'package:flutter/material.dart';
import 'package:flutter_uandi/home/_tap/home_tab/widgets/product_list_item.dart';

class HomeTapListView extends StatelessWidget {
  const HomeTapListView({super.key});

  @override
  Widget build(BuildContext context) {
    // 더미 데이터
    final List<Map<String, dynamic>> products = [
      {
        'title': 'Norah Jones LP',
        'image': 'assets/norahjoneslp.jpg',
        'price': 55000,
        'stock': 2,
      },
      {
        'title': 'Ichiko Aoba LP',
        'image': 'assets/ichikoaoba.webp',
        'price': 48000,
        'stock': 4,
      },
      {
        'title': 'Seong-Jin Cho LP',
        'image': 'assets/seongjincholpp.jpg',
        'price': 74000,
        'stock': 1,
      },
      {
        'title': 'Mariah Carey LP',
        'image': 'assets/mariahcarey.jpg',
        'price': 38000,
        'stock': 0,
      },
      {
        'title': 'Baek Yerin LP',
        'image': 'assets/yerinbaek.jpg',
        'price': 59000,
        'stock': 3,
      },
      {
        'title': 'Cigarettes After Sex LP',
        'image': 'assets/cigarettes.jpg',
        'price': 42000,
        'stock': 2,
      },
      {
        'title': 'Chet Baker LP',
        'image': 'assets/chetbaker.jpg',
        'price': 36000,
        'stock': 6,
      },
      {
        'title': 'Byun Jinsub LP',
        'image': 'assets/jinsubbyun.jpg',
        'price': 62000,
        'stock': 1,
      },
      {
        'title': '[DISNEY] The Little Mermaid LP',
        'image': 'assets/thelittlemermaid.jpeg',
        'price': 32000,
        'stock': 2,
      },
    ];

    // 리턴 값
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final p = products[index];
        return ProductListItem(
          title: p['title'] as String,
          imagePath: p['image'] as String,
          price: p['price'] as int,
          stock: p['stock'] as int,
        );
      },
      separatorBuilder: (context, index) => const Divider(height: 20),
    );
  }
}


//수정 전
/*import 'package:flutter/material.dart';
import 'package:flutter_uandi/home/_tap/home_tab/widgets/product_list_item.dart';

class HomeTapListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10
          ),
        itemBuilder: (context, index) {
          return ProductListItem();
        },
        separatorBuilder: (context, index) {
          return Divider(height: 20);
        },
      ),
    );
  }
}*/



/*import 'package:flutter/material.dart';
import 'package:flutter_uandi/home/_tap/home_tab/widgets/product_list_item.dart';

class HomeTapListView extends StatelessWidget {
  const HomeTapListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        'title': 'Norah Jones LP',
        'image': 'assets/norahjoneslp.jpg',
        'price': 55000,
        'stock': 2,
      },
      {
        'title': 'Ichiko Aoba LP',
        'image': 'assets/ichikoaoba.webp',
        'price': 48000,
        'stock': 4,
      },
      {
        'title': 'Seong-Jin Cho LP',
        'image': 'assets/seongjincholpp.jpg', // 파일명 정확히 확인
        'price': 74000,
        'stock': 1,
      },
      {
        'title': 'Mariah Carey LP',
        'image': 'assets/mariahcarey.jpg',
        'price': 38000,
        'stock': 0,
      },
      {
        'title': 'Baek Yerin LP',
        'image': 'assets/norahjoneslp.jpg', // 실제 예린 이미지로 바꾸면 더 좋음
        'price': 55000,
        'stock': 3,
      },
      {
        'title': 'Cigarettes After Sex LP', // 오타 수정(Ciharettes → Cigarettes)
        'image': 'assets/cigarettes.jpg',
        'price': 42000,
        'stock': 2,
      },
      {
        'title': 'Chet Baker LP',
        'image': 'assets/chetbaker.jpg',
        'price': 36000,
        'stock': 6,
      },
      {
        'title': 'Byun Jinsub LP',
        'image': 'assets/jinsubbyun.jpg',
        'price': 62000,
        'stock': 1,
      },
      {
        'title': '[DISNEY] The Little Mermaid LP',
        'image': 'assets/thelittlemermaid.jpeg', // 확장자 정확히
        'price': 58000,
        'stock': 3,
      },
    ];

    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final p = products[index];
        return ProductListItem(
          title: p['title'] as String,
          imagePath: p['image'] as String,
          price: p['price'] as int,
          stock: p['stock'] as int,
        );
      },
      separatorBuilder: (context, index) => const Divider(height: 20),
    );
  }


//
import 'package:flutter/material.dart';
import 'package:flutter_uandi/home/_tap/home_tab/widgets/product_list_item.dart';

class HomeTapListView extends StatelessWidget {
  
  const HomeTapListView({super.key});
  
  
  @override
  Widget build(BuildContext context) {
   
   final products = [
    {
      'title': 'Norah Jones LP',
      'image': 'assets/norahjoneslp.jpg',
      'price': 55000,
      'stock':2,
    },

    {
      'title': 'Ichiko Aoba LP',
      'image': 'assets/ichikoaoba.webp',
      'price': 48000,
      'stock':4,
    },

    {
      'title': 'Seong-Jin Cho LP',
      'image': 'assets/seongjincholpp.jpg',
      'price': 74000,
      'stock':1,
    },

    {
      'title': 'Mariah Carey LP',
      'image': 'assets/mariahcarey.jpg',
      'price': 38000,
      'stock':0,
    },
{
      'title': 'Baek Yerin LP',
      'image': 'assets/norahjoneslp.jpg',
      'price': 55000,
      'stock':3,
    },

    {
      'title': 'Ciharettes After Sex LP',
      'image': 'assets/cigarettes.jpg',
      'price': 42000,
      'stock':2,
    },

{
      'title': 'Chet Baker LP',
      'image': 'assets/chetbaker.jpg',
      'price': 36000,
      'stock':6,
    },

    {
      'title': 'Byun Jinsub LP',
      'image': 'assets/jinsubbyun.jpg',
      'price': 62000,
      'stock':1,
    },

    {
      'title': '[DISNEY] The Little Mermaid LP',
      'image': 'assets/thelittlemermaid.jpeg',
      'price': 58000,
      'stock':3,
    },
    
   ];

  }
}

    /*return Expanded(
      child: ListView.separated(
        itemCount: 10,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10
          ),
        itemBuilder: (context, index) {
          return ProductListItem();
        },
        separatorBuilder: (context, index) {
          return Divider(height: 20);
        },
      ),
    );
  }
} */*/

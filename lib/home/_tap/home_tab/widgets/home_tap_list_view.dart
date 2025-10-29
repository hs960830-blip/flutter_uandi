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
      'image': 'assets/seongjincholpp,jpg',
      'price': 55000,
      'stock':2,
    },

    {
      'title': 'Norah Jones LP',
      'image': 'assets/norahjoneslp.jpg',
      'price': 55000,
      'stock':2,
    },
{
      'title': 'Norah Jones LP',
      'image': 'assets/norahjoneslp.jpg',
      'price': 55000,
      'stock':2,
    },

    {
      'title': 'Norah Jones LP',
      'image': 'assets/norahjoneslp.jpg',
      'price': 55000,
      'stock':2,
    },

{
      'title': 'Norah Jones LP',
      'image': 'assets/norahjoneslp.jpg',
      'price': 55000,
      'stock':2,
    },

    {
      'title': 'Norah Jones LP',
      'image': 'assets/norahjoneslp.jpg',
      'price': 55000,
      'stock':2,
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
} */

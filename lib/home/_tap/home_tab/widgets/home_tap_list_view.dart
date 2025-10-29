import 'package:flutter/material.dart';
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
}

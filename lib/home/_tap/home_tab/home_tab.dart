import 'package:flutter/widgets.dart';
import 'package:flutter_uandi/home/_tap/home_tab/widgets/home_tap_app_bar.dart';
import 'package:flutter_uandi/home/_tap/home_tab/widgets/home_tap_list_view.dart';

class HomeTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        children: [
          HomeTapAppBar(),
          HomeTapListView()
        ],
      ),
    );
  }
}
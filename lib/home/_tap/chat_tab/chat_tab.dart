




import 'package:flutter/widgets.dart';
import 'package:flutter_uandi/home/_tap/chat_tab/chat_tab_app_bar.dart';
import 'package:flutter_uandi/home/_tap/chat_tab/chat_tab_list_view.dart';

class ChatTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        children: [
          ChatTabAppBar(),
          ChatTabListView()
        ],
      ),
    );
  }
}
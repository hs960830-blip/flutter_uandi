// home_tab.dart
import 'package:flutter/material.dart';
import 'package:flutter_uandi/home/_tap/home_tab/widgets/home_tap_list_view.dart';
import 'package:flutter_uandi/home/_tap/home_tab/widgets/home_tap_app_bar.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeTapAppBar(),   // 이제 바로 OK
      body: const HomeTapListView(),   // 리스트 화면
    );
  }
}


/*import 'package:flutter/material.dart';
import 'package:flutter_uandi/home/_tap/home_tab/widgets/home_tap_app_bar.dart';
import 'package:flutter_uandi/home/_tap/home_tab/widgets/home_tap_list_view.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // HomeTapAppBar가 AppBar를 반환한다면 그대로:
      appBar: const HomeTapAppBar(),

      // 만약 HomeTapAppBar가 일반 위젯이라면 아래 주석 사용:
      // appBar: const PreferredSize(
      //   preferredSize: Size.fromHeight(56),
      //   child: HomeTapAppBar(),
      // ),

      body: const HomeTapListView(), // ← 리스트는 body에!
    );
  }
}*/

/*
import 'package:flutter/material.dart';
import 'package:flutter_uandi/home/_tap/home_tab/widgets/home_tap_list_view.dart';
import 'package:flutter_uandi/home/_tap/home_tab/widgets/home_tap_app_bar.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeTapAppBar(), // 커스텀 AppBar면 PreferredSize로 잘 감싼 버전 사용
      body: const HomeTapListView(), // Column이 아니라면 그냥 이렇게
      // 만약 Column을 써야 한다면:
      // body: Column(
      //   children: const [
      //     SomeHeader(),
      //     Expanded(child: HomeTapListView()),
      //   ],
      // ),
    );
  }
}

*/

//수정 전
/*import 'package:flutter/widgets.dart';
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
}*/
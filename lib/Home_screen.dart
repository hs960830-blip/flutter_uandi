import 'package:flutter/material.dart';
import 'package:flutter_uandi/record_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children:[
          Image.asset('assets/wasabi.jpg',

         fit: BoxFit.fitWidth, width: double.infinity,),

          Positioned(bottom: 150, left: (MediaQuery.of(context).size.width - 100) / 2.1,
              child: GestureDetector(
                onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecordList()));
                },
                child: Container(child: Text('탭하여 시작하기',
                style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 63, 63, 63)
                ),)),
              )),
        ],
      ),
    );
  }
}

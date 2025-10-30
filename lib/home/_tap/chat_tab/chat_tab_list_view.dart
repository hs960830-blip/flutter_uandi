import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatTabListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20) ,
        itemCount: 1,
        itemBuilder: (context, index) {
          return item();
        },
        separatorBuilder: (context, index) {
          return Divider(height: 1);
        },
        ));
  }

  Widget item() {
    return Container(
      height: 80,
      child: Row(
        children: [
          UserProfileImage(
            dimension: 50,
            imgUrl:
                'https://ca.slack-edge.com/T088AB0N865-U09CHV6AVC5-2857d6246ab2-192',
          ),
          SizedBox(width: 16),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                 Text('이도 님',
                 style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold
                 ),),
                 SizedBox(width: 4),
                 Text('1분 전',
                 style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey
                 ),)
                ],
              ),
               Text('가지고 계신 음반 상태가 어떤가요?'),
            ],
          ))
        ],
      ),
    );
  }
}

class UserProfileImage extends StatelessWidget {
  const UserProfileImage({
    super.key,
    required this.dimension,
    required this.imgUrl,
  });

  final double dimension;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: dimension,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.network(imgUrl),
      ),
    );
  }
}

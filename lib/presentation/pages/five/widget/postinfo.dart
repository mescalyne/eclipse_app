import 'package:flutter/material.dart';
import 'package:project/domain/entities/posts.dart';

class PostInfoPage extends StatelessWidget {
  final PostsDto postInfo;
  const PostInfoPage({required this.postInfo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
        padding: EdgeInsets.all(20.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromRGBO(209, 249, 206, 1),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              postInfo.title!,
              style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              postInfo.body!,
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ));
  }
}

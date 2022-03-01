import 'package:flutter/material.dart';
import 'package:project/domain/entities/posts.dart';

class PostsInfo extends StatelessWidget {
  final List<PostsDto> posts;

  const PostsInfo({required this.posts, Key? key}) : super(key: key);

  static const containerHeight = 150.0;
  static const containerWidth = 250.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...posts.sublist(0, 3).map(
                    (e) => PostsInfoCard(
                      postInfo: e,
                    ),
                  )
            ],
          )),
    );
  }
}

class PostsInfoCard extends StatelessWidget {
  final PostsDto postInfo;
  const PostsInfoCard({required this.postInfo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 100, maxWidth: 220),
      margin: EdgeInsets.only(left: 20.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(208, 248, 208, 1),
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Column(children: [
        Text(
          '${postInfo.title}',
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          maxLines: 1,
        ),
        Text(
          '${postInfo.title}',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 13.0),
          maxLines: 1,
        ),
      ]),
    );
  }
}

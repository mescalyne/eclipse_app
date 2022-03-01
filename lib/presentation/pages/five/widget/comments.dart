import 'package:flutter/material.dart';
import 'package:project/domain/entities/posts.dart';
import 'package:project/resources/dictionary.dart';

class CommentsBlock extends StatelessWidget {
  final List<CommentDto> comments;
  const CommentsBlock({required this.comments, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(children: <Widget>[
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: comments.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(right: 12.0, left: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('   ' + (comments[index].email ?? 'unknown user'),
                            style: TextStyle(fontSize: 16.0)),
                        Container(
                          padding: EdgeInsets.all(14.0),
                          margin: EdgeInsets.only(bottom: 20.0),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(209, 249, 206, 0.4),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                comments[index].name ?? EclipseDictionary.dots,
                                style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600),
                              ),
                              Text(
                                comments[index].body ?? EclipseDictionary.dots,
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ])),
    );
  }
}

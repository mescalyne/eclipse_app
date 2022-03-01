import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/domain/entities/posts.dart';
import 'package:project/presentation/pages/third/bloc/bloc.dart';
import 'package:project/presentation/pages/third/bloc/event.dart';
import 'package:project/resources/dictionary.dart';

class PostsList extends StatelessWidget {
  final List<PostsDto> posts;
  const PostsList({required this.posts, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(25.0),
        child: Column(children: [
          ...posts.map(
            (e) => Container(
                margin: EdgeInsets.only(bottom: 20.0),
                padding: EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(242, 242, 242, 1),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: InkWell(
                  onTap: () => {
                    BlocProvider.of<ThirdBloc>(context)
                        .add(ThirdEvent.onRouteToFive(e.id!))
                  },
                  child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.title ?? EclipseDictionary.dots,
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.w600),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            e.body ?? EclipseDictionary.dots,
                            style: TextStyle(fontSize: 18.0),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      )),
                )),
          ),
        ]),
      ),
    );
  }
}

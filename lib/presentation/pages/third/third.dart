import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:project/presentation/pages/third/bloc/bloc.dart';
import 'package:project/presentation/pages/third/bloc/state.dart';
import 'package:project/presentation/pages/third/widget/postlist.dart';
import 'package:project/resources/dictionary.dart';

class ThirdPage extends StatelessWidget {
  static const id = 'third';

  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThirdBloc, ThirdState>(builder: (context, state) {
      if (state.screenStatus == ScreenStatus.loading) {
        return Center(child: CircularProgressIndicator());
      } else {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                elevation: 0,
                iconTheme: IconThemeData(
                  color: Colors.black, //change your color here
                ),
                backgroundColor: Colors.white,
                title: Text(
                  EclipseDictionary.posts,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(22, 21, 21, 1),
                  ),
                )),
            body: PostsList(posts: state.posts!));
      }
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:project/presentation/pages/five/bloc/bloc.dart';
import 'package:project/presentation/pages/five/bloc/state.dart';
import 'package:project/presentation/pages/five/widget/addition.dart';
import 'package:project/presentation/pages/five/widget/comments.dart';
import 'package:project/presentation/pages/five/widget/postinfo.dart';
import 'package:project/resources/dictionary.dart';

class FivePage extends StatelessWidget {
  static const id = 'five';

  const FivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FiveBloc, FiveState>(builder: (context, state) {
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
                EclipseDictionary.post,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(22, 21, 21, 1),
                ),
              )),
          body: Column(
            children: [
              PostInfoPage(
                postInfo: state.posts!,
              ),
              StreamBuilder<bool>(
                  initialData: false,
                  stream: BlocProvider.of<FiveBloc>(context).isLoadedComments,
                  builder: (context, snapShot) {
                    bool isLoadedPosts = snapShot.data ?? false;
                    return isLoadedPosts
                        ? CommentsBlock(
                            comments: state.comments!,
                          )
                        : Text(EclipseDictionary.noComment);
                  }),
            ],
          ),
          bottomSheet: AdditionComment(),
        );
      }
    });
  }
}

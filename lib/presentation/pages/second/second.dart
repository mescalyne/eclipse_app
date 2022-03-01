import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:project/presentation/pages/second/bloc/bloc.dart';
import 'package:project/presentation/pages/second/bloc/event.dart';
import 'package:project/presentation/pages/second/bloc/state.dart';
import 'package:project/presentation/pages/second/widget/albuminfo.dart';
import 'package:project/presentation/pages/second/widget/maininfo.dart';
import 'package:project/presentation/pages/second/widget/postsinfo.dart';
import 'package:project/resources/dictionary.dart';

class SecondPage extends StatelessWidget {
  static const id = 'second';

  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SecondBloc, SecondState>(builder: (context, state) {
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
                  state.user?.username ?? EclipseDictionary.user,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(22, 21, 21, 1),
                  ),
                )),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 30.0, left: 30.0),
                  child: Text(
                    state.user!.name ?? EclipseDictionary.dots,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(22, 21, 21, 1),
                    ),
                  ),
                ),
                MainInfo(userDto: state.user!),
                StreamBuilder<bool>(
                    initialData: false,
                    stream: BlocProvider.of<SecondBloc>(context).isLoadedPosts,
                    builder: (context, snapShot) {
                      bool isLoadedPosts = snapShot.data ?? false;
                      return isLoadedPosts
                          ? Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 30.0, left: 30.0, right: 30.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        EclipseDictionary.posts,
                                        style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(22, 21, 21, 1),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          BlocProvider.of<SecondBloc>(context)
                                              .add(
                                                  SecondEvent.onRouteToThird());
                                        },
                                        child: Icon(
                                          Icons.arrow_right_alt_sharp,
                                          size: 40,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                PostsInfo(
                                  posts: state.posts!,
                                ),
                              ],
                            )
                          : Container();
                    }),
                StreamBuilder<bool>(
                    initialData: false,
                    stream: BlocProvider.of<SecondBloc>(context).isLoadedAlbums,
                    builder: (context, snapShot) {
                      bool isLoadedAlbums = snapShot.data ?? false;
                      return isLoadedAlbums
                          ? Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 30.0, left: 30.0, right: 30.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        EclipseDictionary.albums,
                                        style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromRGBO(22, 21, 21, 1),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () => BlocProvider.of<
                                                SecondBloc>(context)
                                            .add(SecondEvent.onRouteToFour()),
                                        child: Icon(
                                          Icons.arrow_right_alt_sharp,
                                          size: 40,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                AlbumsInfo(
                                  albums: state.albums!,
                                ),
                              ],
                            )
                          : Container();
                    }),
              ],
            ));
      }
    });
  }
}

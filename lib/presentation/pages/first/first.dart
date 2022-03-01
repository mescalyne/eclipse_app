import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:project/presentation/pages/first/bloc/bloc.dart';
import 'package:project/presentation/pages/first/bloc/state.dart';
import 'package:project/presentation/pages/first/widget/userlist.dart';
import 'package:project/resources/dictionary.dart';

class FirstPage extends StatelessWidget {
  static const id = 'first';

  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
            title: Text(
          EclipseDictionary.myFriends,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(22, 21,21,1),
          ),
        )),
        body: Container(
          padding: const EdgeInsets.only(top: 10.0, left: 50.0),
          child: BlocBuilder<FirstBloc, FirstState>(builder: (context, state) {
            if (state.screenStatus == ScreenStatus.loading) {
              return Center(child: CircularProgressIndicator());
            } else {
              return UserList(
                users: state.userDto ?? [],
              );
            }
          }),
        ));
  }
}

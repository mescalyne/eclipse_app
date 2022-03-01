import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/domain/entities/user.dart';
import 'package:project/presentation/pages/first/bloc/event.dart';

import '../bloc/bloc.dart';

class UserList extends StatelessWidget {
  final List<UserDto> users;
  const UserList({required this.users, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...users.map(
            (user) => InkWell(
              onTap: () {
                BlocProvider.of<FirstBloc>(context)
                    .add(FirstEvent.onRouteToSecond(user));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(242, 242, 242, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.all(30.0),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${user.name}',
                      style: TextStyle(fontSize: 26.0),
                    ),
                    SizedBox(height: 4.0,),
                    Text(
                      '${user.username}',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

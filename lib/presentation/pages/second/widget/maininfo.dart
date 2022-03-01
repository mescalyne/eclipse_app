import 'package:flutter/material.dart';
import 'package:project/domain/entities/user.dart';
import 'package:project/resources/dictionary.dart';

class MainInfo extends StatelessWidget {
  final UserDto userDto;

  const MainInfo({required this.userDto, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30.0),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.0),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(204, 211, 248, 1),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        EclipseDictionary.mainInfo,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '${userDto.name}',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        '${userDto.email}',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        '${userDto.phone}',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        '${userDto.website}',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(208, 248, 208, 1),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        EclipseDictionary.workInfo,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '${userDto.companyName}',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        '${userDto.companyBs}',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        '${userDto.companyPhrase}',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        '${userDto.addressCity}',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ]),
              ),
            ],
          )),
    );
  }
}

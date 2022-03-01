import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:project/presentation/pages/five/bloc/bloc.dart';
import 'package:project/presentation/pages/five/bloc/event.dart';
import 'package:project/resources/dictionary.dart';

class AdditionComment extends StatelessWidget {
  AdditionComment({Key? key}) : super(key: key);

  final TextEditingController _nameEditController = TextEditingController();
  final TextEditingController _emailEditController = TextEditingController();
  final TextEditingController _commentEditController = TextEditingController();

  @override
  Widget build(BuildContext mycontext) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: mycontext,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
            ),
            builder: (context) {
              return SizedBox(
                height: 400.0,
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(242, 242, 242, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: TextFormField(
                      controller: _emailEditController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'email',
                        hintStyle: TextStyle(fontWeight: FontWeight.w800),
                      ),
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(242, 242, 242, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: TextFormField(
                      controller: _nameEditController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'name',
                        hintStyle: TextStyle(fontWeight: FontWeight.w800),
                      ),
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(242, 242, 242, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: TextFormField(
                      controller: _commentEditController,
                      keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'comment',
                        hintStyle: TextStyle(fontWeight: FontWeight.w800),
                      ),
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                  ),
                  InkWell(
                    onTap: () { BlocProvider.of<FiveBloc>(mycontext).add(
                        FiveEvent.onAddComment(
                            _emailEditController.text,
                            _nameEditController.text,
                            _commentEditController.text));
                            Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.all(20.0),
                      padding: EdgeInsets.all(20.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(242, 242, 242, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        EclipseDictionary.addComment,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ]),
              );
            });
      },
      child: Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(20.0),
        width: MediaQuery.of(mycontext).size.width,
        decoration: BoxDecoration(
          color: Color.fromRGBO(242, 242, 242, 1),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Text(
          EclipseDictionary.addComment,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:project/presentation/pages/four/bloc/bloc.dart';
import 'package:project/presentation/pages/four/bloc/state.dart';
import 'package:project/presentation/pages/four/widget/albums.dart';
import 'package:project/resources/dictionary.dart';

class FourPage extends StatelessWidget {
  static const id = 'four';
  const FourPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FourBloc, FourState>(builder: (context, state) {
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
                EclipseDictionary.albums,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(22, 21, 21, 1),
                ),
              )),
          body: AlbumScrollableField(
            albums: state.albums!,
          ),
        );
      }
    });
  }
}

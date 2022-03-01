import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:project/domain/entities/albums.dart';
import 'package:project/resources/dictionary.dart';

class AlbumScrollableField extends StatelessWidget {
  final List<AlbumDto> albums;
  const AlbumScrollableField({required this.albums, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: albums.length,
        itemBuilder: (BuildContext context, int index) => SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  albums[index].title ?? EclipseDictionary.albums,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: albums[index].photos!.length,
                  itemBuilder: (BuildContext context, int indexj) => InkWell(
                    onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              contentPadding: EdgeInsets.all(0),
                              backgroundColor: Color.fromRGBO(242, 242, 242, 1),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.network(albums[index]
                                          .photos![indexj]
                                          .url ??
                                      'https://www.freeiconspng.com/img/23494'),
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 10.0,
                                        bottom: 10.0,
                                        left: 15.0,
                                        right: 10.0),
                                    child: Text(
                                      albums[index].photos![indexj].title ??
                                          EclipseDictionary.text,
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                  ),
                                ],
                              ));
                        }),
                    child: Container(
                      padding: EdgeInsets.only(right: 10.0, left: 10.0),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            child: Image.network(
                                albums[index].photos![indexj].url ??
                                    'https://www.freeiconspng.com/img/23494'),
                            color: Color.fromRGBO(242, 242, 242, 1),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: 10.0,
                                bottom: 10.0,
                                left: 15.0,
                                right: 10.0),
                            constraints: BoxConstraints(
                                minWidth: 200.0, maxWidth: 200.0),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(242, 242, 242, 1),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0))),
                            child: Text(
                              albums[index].photos![indexj].title ??
                                  EclipseDictionary.text,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  overflow: TextOverflow.ellipsis),
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                      //Center(child: Text('Dummy Card Text')),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

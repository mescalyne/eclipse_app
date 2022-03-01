import 'package:flutter/material.dart';
import 'package:project/domain/entities/albums.dart';

class AlbumsInfo extends StatelessWidget {
  final List<AlbumDto> albums;

  const AlbumsInfo({required this.albums, Key? key}) : super(key: key);

  static const containerHeight = 150.0;
  static const containerWidth = 250.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...albums.sublist(0, 3).map(
                    (e) => AlbumInfoCard(
                      album: e,
                    ),
                  )
            ],
          )),
    );
  }
}

class AlbumInfoCard extends StatelessWidget {
  final AlbumDto album;
  const AlbumInfoCard({required this.album, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 220,maxWidth: 220),
      margin: EdgeInsets.only(left: 20.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(241, 215, 250, 1),
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Column(children: [
        Text(
          '${album.title}',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          maxLines: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          ...album.photos!.sublist(0,3).map((e) => Container(padding: EdgeInsets.all(10.0), child: Image.network(e.thumbnailUrl!,width: 40,))),
        ],)
      ]),
    );
  }
}

import 'package:flutter/material.dart';

class SongsPage extends StatelessWidget {
  final List data = [
    {
      'image': 'assets/images/songs.jpg',
      'title': 'Yang Terlupakan',
      'subtitle': 'Iwan Fals'
    },
    {
      'image': 'assets/images/songs.jpg',
      'title': 'Ruang Rindu',
      'subtitle': 'Letto'
    },
    {
      'image': 'assets/images/songs.jpg',
      'title': 'Jangan Pernah Berubah',
      'subtitle': 'ST12'
    },
    {
      'image': 'assets/images/songs.jpg',
      'title': 'Saat Terakhir',
      'subtitle': 'ST12'
    },
    {
      'image': 'assets/images/songs.jpg',
      'title': 'Aishiteru',
      'subtitle': 'Zivilia'
    },
    {
      'image': 'assets/images/songs.jpg',
      'title': 'C.I.N.T.A',
      'subtitle': "D'Bagindas"
    },
    {
      'image': 'assets/images/songs.jpg',
      'title': 'Mama Papa Larang (Mapala)',
      'subtitle': 'Judika'
    },
    {
      'image': 'assets/images/songs.jpg',
      'title': 'Bendera',
      'subtitle': 'Cokelat'
    },
    {
      'image': 'assets/images/songs.jpg',
      'title': 'Mawar Hitam',
      'subtitle': 'Tipe-x'
    },
    {
      'image': 'assets/images/songs.jpg',
      'title': 'Di Belakangku',
      'subtitle': 'Peterpan'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            leading: Image.asset(data[index]['image']),
            title: Text(data[index]['title']),
            subtitle: Text(data[index]['subtitle']),
          ));
        });
  }
}

import 'package:flutter/material.dart';
import 'package:projectdrawer/component/drawer_component.dart';
import 'package:projectdrawer/pages/home.dart';
import 'package:projectdrawer/pages/song.dart';
import 'package:projectdrawer/pages/album.dart';
import 'package:projectdrawer/pages/gallery.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPage = 0;

  final List<Widget> _pages = [
    HomePage(),
    SongsPage(),
    AlbumPage(),
    GalleryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Belajar Drawer")),
      drawer: Drawer(
          child: ListView(children: [
        DrawerHeaderComponent(
          accountName: "Mirza Saputra",
          accountEmail: "mirzasaputra066@gmail.com",
          profilPicture: "assets/images/profil.jpg",
        ),
        DrawerItem(
            icon: Icons.home,
            text: "Home",
            onTap: () => setState(() {
                  _selectedPage = 0;
                  Navigator.of(context).pop();
                })),
        DrawerItem(
            icon: Icons.audiotrack,
            text: "Songs",
            onTap: () => setState(() {
                  _selectedPage = 1;
                  Navigator.of(context).pop();
                })),
        DrawerItem(
            icon: Icons.album,
            text: "Album",
            onTap: () => setState(() {
                  _selectedPage = 2;
                  Navigator.of(context).pop();
                })),
        const Divider(
          height: 25,
          thickness: 1.0,
        ),
        const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
            child: Text('Other',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ))),
        DrawerItem(
            icon: Icons.collections,
            text: "Gallery",
            onTap: () => setState(() {
                  _selectedPage = 3;
                  Navigator.of(context).pop();
                })),
      ])),
      body: _pages[_selectedPage],
    );
  }
}

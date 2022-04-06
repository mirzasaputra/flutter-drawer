import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(padding: const EdgeInsets.all(8.0), child: Image.asset('assets/images/songs.jpg'));
        });
  }
}

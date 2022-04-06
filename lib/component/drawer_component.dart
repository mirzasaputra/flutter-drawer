import 'package:flutter/material.dart';

class DrawerHeaderComponent extends StatelessWidget {
  String accountName, accountEmail, profilPicture;

  DrawerHeaderComponent({required this.accountName, required this.accountEmail, required this.profilPicture});

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(accountName: Text(accountName), accountEmail: Text(accountEmail), currentAccountPicture: ClipOval(child: Image(image: AssetImage(profilPicture), fit: BoxFit.cover)));
  }
}

class DrawerItem extends StatelessWidget {
  IconData icon;
  String text;
  GestureTapCallback? onTap;

  DrawerItem({required this.icon, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Row(
          children: [
            Icon(icon),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        onTap: onTap);
  }
}

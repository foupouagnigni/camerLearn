import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey[200],
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Nom du responsable'),
              accountEmail: Text('email'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/photo_responsable.png'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Accueil'),
              onTap: () {
                // Actions à effectuer lorsqu'on appuie sur le bouton Accueil
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Paramètres'),
              onTap: () {
                // Actions à effectuer lorsqu'on appuie sur le bouton Paramètres
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              onTap: () {
                // Actions à effectuer lorsqu'on appuie sur le bouton Notifications
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Rechercher'),
              onTap: () {
                // Actions à effectuer lorsqu'on appuie sur le bouton Rechercher
              },
            ),
          ],
        ),
      ),
    );
  }
}
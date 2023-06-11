import 'package:flutter/material.dart';
import 'package:camerlearn/widget/Logout_popUp/Logout_popUp.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Menu'.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 232, 131, 7),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Accueil'),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Responsable'),
            onTap: () {
              Navigator.pushNamed(context, '/responsable');
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Cours'),
            onTap: () {
              Navigator.pushNamed(context, '/cours');
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Déconnexion'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Logout_popUp();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
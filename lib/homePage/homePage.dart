import 'package:flutter/material.dart';
import 'package:camerlearn/widget/Logout_popUp/Logout_popUp.dart';
import 'package:camerlearn/responsablePage/responsablePage.dart';
import 'package:camerlearn/coursPage/coursPage.dart';
import 'package:camerlearn/widget/customDrawer/customDrawer.dart';
import 'package:camerlearn/widget/CustomAppBar/CustomAppBar.dart';


class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:CustomAppBar(),

      drawer: const CustomDrawer(),
     

  backgroundColor: Colors.blueGrey[50], // Définir la couleur de fond
     body:
     
     Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text(
      'Bienvenue dans la section administrateur de Camerlearn'.toUpperCase(),
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 50,
      ),
    ),


        IconButton(
          iconSize: 100, // Définir la taille de l'icône
          icon: Icon(Icons.person), // Définir l'icône
          onPressed: () {
            // Rediriger l'utilisateur vers la page des responsables
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => responsablePage()),
            );
          },
        ),
        Text('Responsable'), // Texte correspondant au logo
        SizedBox(height: 32), // Espacement entre les deux boutons
        IconButton(
          iconSize: 100, // Définir la taille de l'icône
          icon: Icon(Icons.book), // Définir l'icône
          onPressed: () {
            // Actions à effectuer lorsque l'on clique sur le bouton
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => coursPage()),
            );
          },
        ),
        Text('Cours'), // Texte correspondant au logo
        SizedBox(height: 32), // Espacement entre les deux boutons
        IconButton(
          iconSize: 100, // Définir la taille de l'icône
          icon: Icon(Icons.logout), // Définir l'icône
          onPressed: () {
            // Actions à effectuer lorsque l'on clique sur le bouton
            showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Logout_popUp();
                 
                                               },
                );
          },
        ),
        Text('Déconnexion'), // Texte correspondant au logo
      ],
    ),
  ),
    );
  }
}
        
        
        
        
        
        
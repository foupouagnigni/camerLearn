import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:camerlearn/widget/customDrawer/customDrawer.dart';
import 'package:camerlearn/widget/CustomAppBar/CustomAppBar.dart';
import 'package:camerlearn/widget/AddResponsablePopup/AddResponsablePopup.dart';
import 'package:camerlearn/widget/ModifyResponsablePopup/ModifyResponsablePopup.dart';
import 'package:camerlearn/widget/SupprimerPopup/SupprimerPopup.dart';
class responsablePage extends StatefulWidget {
  @override
  State<responsablePage> createState() => _responsablePageState();
}

class _responsablePageState extends State<responsablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      backgroundColor: Colors.blueGrey[50],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 50.0),
                  Text(
                    "Gestion responsable",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 600.0),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.plusCircle,
                      color: Colors.blue,
                      size: 50.0,
                    ),
                    onPressed: () {
                      // Ajouter l'action à effectuer lors du clic sur le bouton "Ajouter"
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AddResponsablePopup();
                        },
                      );
                    },
                  ),
                  Text(
                    "Ajouter",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 30.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                       BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 50.0),
                        SizedBox(height: 20.0),
                        // tableau
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "ID",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Nom",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Email",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Statut",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Privilèges",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Action",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Divider(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("1"),
                            Text("John Doe"),
                            Text("johndoe@gmail.com"),
                            Text("Actif"),
                               Text("Admin"),
                            Row(
                              children: [
                              
                                IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {
                                    // Ajouter l'action à effectuer lors du clic sur le bouton "Modifier"
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return ModifyResponsablePopup();
                                      },
                                    );
                                  },
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                  onPressed: () {
                                    // Ajouter l'action à effectuer lors du clic sur le bouton "Supprimer"
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return SupprimerPopup();
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                           
                          ],
                        ),
                        Divider(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("2"),
                            Text("Jane Smith"),
                            Text("janesmith@gmail.com"),
                            Text("Inactif"),
                            Text("Utilisateur"),
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {
                                    // Ajouter l'action à effectuer lors du clic sur le bouton "Modifier"
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return ModifyResponsablePopup();
                                      },
                                    );
                                  },
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                  onPressed: () {
                                    // Ajouter l'action à effectuer lors du clic sur le bouton "Supprimer"
                                  },
                                ),
                              ],
                            ),
                            
                          ],
                        ),
                        SizedBox(height: 20.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
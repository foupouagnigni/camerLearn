import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:camerlearn/widget/customDrawer/customDrawer.dart';
import 'package:camerlearn/widget/CustomAppBar/CustomAppBar.dart';
import 'package:camerlearn/widget/AddValueCours/AddValueCours.dart';

class coursPage extends StatefulWidget {
  @override
  State<coursPage> createState() => _coursPageState();
}

class _coursPageState extends State<coursPage> {
  List<String> _dropdownValues = List.generate(7, (index) => 'Option 1');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: const CustomDrawer(),
      backgroundColor: Colors.blueGrey[50], // Définir la couleur de fond
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Premier bloc : titre "Gestion Cours"
            Text(
              'GESTION COURS'.toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),

            SizedBox(height: 40.0), // Espace entre les blocs

            // Deuxième bloc : 7 listes déroulantes
// Deuxième bloc : 7 listes déroulantes
Padding(
  padding: EdgeInsets.all(60.0),
  child: Column(
    children: List.generate(7, (index) {
      String dropdownValue = 'Option 1';
      String labelText = '';
      List<String> dropdownItems = [];
      switch (index) {
        case 0:
          labelText = 'Système éducatif';
          dropdownItems = ['Option 1', 'Option 2', 'Option 3'];
          break;
        case 1:
          labelText = 'Sous-système éducatif';
          dropdownItems = ['Option 1', 'Option 2', 'Option 3'];
          break;
        case 2:
          labelText = 'Cycle';
          dropdownItems = ['Option 1', 'Option 2', 'Option 3'];
          break;
        case 3:
          labelText = 'Niveau';
          dropdownItems = ['Option 1', 'Option 2', 'Option 3'];
          break;
        case 4:
          labelText = 'Matière';
          dropdownItems = ['Option 1', 'Option 2', 'Option 3'];
          break;
        case 5:
          labelText = 'Chapitre';
          dropdownItems = ['Option 1', 'Option 2', 'Option 3'];
          break;
        case 6:
          labelText = 'Leçon';
          dropdownItems = ['Option 1', 'Option 2', 'Option 3'];
          break;
      }
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Titre de la liste
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text(
                labelText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),

            // Liste déroulante
            Expanded(
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: labelText),
                value: dropdownValue,
                items: dropdownItems
                    .map((String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ))
                    .toList(),
               onChanged: (String? value) {
                      setState(() {
                        dropdownValue = value ?? 'Option 1';
                      });
                    },
              onSaved: (String? value) {
                setState(() {
                  dropdownValue = value ?? 'Option 1';
                 });
                },

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez choisir une option';
                  }
                  return null;
                },
                isExpanded: true, // Ajouter cette propriété pour réduire la largeur de la liste déroulante
      
              ),
            ),

            SizedBox(width: 16.0), // Espace entre les listes déroulantes

          IconButton(
            onPressed: () {
              // TODO: Action à exécuter lors du clic sur le bouton de visualisation
            },
            icon: Icon(
              Icons.visibility,
              size: 32,
              color: Color.fromARGB(255, 5, 9, 242),
            ),
            tooltip: 'Visualiser',
            splashRadius: 24,
          ),

          SizedBox(width: 16.0),

          IconButton(
            onPressed: () {
              // TODO: Action à exécuter lors du clic sur le bouton d'ajout
              showAddValueCoursDialog(context, index);
            },
            icon: Icon(
              Icons.add,
              size: 32,
              color: Colors.green,
            ),
            tooltip: 'Ajouter',
            splashRadius: 24,
          ),

          SizedBox(width: 16.0),

          IconButton(
            onPressed: () {
              // TODO: Action à exécuter lors du clic sur le bouton de modification
            },
            icon: Icon(
              Icons.edit,
              size: 32,
              color: Colors.orange,
            ),
            tooltip: 'Modifier',
            splashRadius: 24,
          ),

          SizedBox(width: 16.0),

          IconButton(
            onPressed: () {
              // TODO: Action à exécuter lors du clic sur le bouton de suppression
            },
            icon: Icon(
              Icons.delete,
              size: 32,
              color: Colors.red,
            ),
            tooltip: 'Supprimer',
            splashRadius: 24,
          ),
                    ],
                  ),
                );
              }),
            ),
          ),

            SizedBox(height: 40.0), // Espace entre les blocs

            // Troisième bloc : tableau de 3 colonnes
Padding(
  padding: EdgeInsets.symmetric(horizontal: 60.0),
  child: Column(
    children: [
      // En-tête du tableau
      Row(
        children: [
          Expanded(
            child: Text(
              'ID',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Nom',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Description',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),

      SizedBox(height: 16.0), // Espace entre l'en-tête et le contenu

      // Contenu du tableau
      Row(
        children: [
          Expanded(
            child: Text('1'),
          ),
          Expanded(
            child: Text('Leçon 1'),
          ),
          Expanded(
            child: Text('Description de la leçon 1'),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
            child: Text('2'),
          ),
          Expanded(
            child: Text('Leçon 2'),
          ),
          Expanded(
            child: Text('Description de la leçon 2'),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
            child: Text('3'),
          ),
          Expanded(
            child: Text('Leçon 3'),
          ),
          Expanded(
            child: Text('Description de la leçon 3'),
          ),
        ],
      ),

      SizedBox(height: 16.0), // Espace après le contenu

      // Bouton pour valider le formulaire
      ElevatedButton(
        onPressed: () {
          // TODO: Action à exécuter lors du clic sur le bouton
        },
        child: Text('Valider'),
      ),
    ],
  ),
),



          ],
        ),
      ),
    );
  }


  void showAddValueCoursDialog(BuildContext context, int index) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AddValueCours(index: index);
      },
    );
  }
}
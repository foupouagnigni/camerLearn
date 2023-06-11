import 'package:flutter/material.dart';

class SupprimerPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromRGBO(242, 113, 33, 1),
      title: Text(
        'Confirmation de Suppression',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      content: Text(
        'Êtes-vous sûr de vouloir supprimer ce Responsable ?',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(
            'Annuler',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        ElevatedButton(
           onPressed: () => Navigator.pushNamed(context, '/responsable'),
          child: Text(
            'Confirmer',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(233, 64, 87, 1),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddResponsablePopup extends StatefulWidget {
  const AddResponsablePopup({Key? key}) : super(key: key);

  @override
  _AddResponsablePopupState createState() => _AddResponsablePopupState();
}

class _AddResponsablePopupState extends State<AddResponsablePopup> {
  final _formKey = GlobalKey<FormState>();
  String? _nom;
  String? _prenom;
  String? _email;
  String? _numeroTelephone;
  String? _statut;
  File? _image;

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Ajouter un responsable'),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nom'),
                onSaved: (value) => _nom = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un nom';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Prénom'),
                onSaved: (value) => _prenom = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un prénom';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                onSaved: (value) => _email = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une adresse email';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration:
                    InputDecoration(labelText: 'Numéro de téléphone'),
                onSaved: (value) => _numeroTelephone = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un numéro de téléphone';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Statut'),
                items: ['Option 1', 'Option 2', 'Option 3']
                    .map((String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ))
                    .toList(),
                onChanged: (value) => _statut = value,
                onSaved: (value) => _statut = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez choisir un statut';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              _image == null
                  ? TextButton(
                      onPressed: _pickImage,
                      child: Text('Insérer une image'),
                    )
                  : Image.file(_image!),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Annuler'),
        ),
        ElevatedButton(
          onPressed: () {
            final form = _formKey.currentState;
            if (form != null && form.validate()) {
              form.save();
              // TODO: Implémenter la logique permettant de valider les données du formulaire
              Navigator.of(context).pop();
            }
          },
          child: Text('Valider'),
        ),
      ],
    );
  }
}
import 'dart:io';
import 'dart:typed_data';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;

class AddValueCours extends StatefulWidget {
  final int index;

  AddValueCours({required this.index});

  @override
  _AddValueCoursState createState() => _AddValueCoursState(index: index);
}

class _AddValueCoursState extends State<AddValueCours> {
  final int index;
   String? _nom;
  String? _description;
  Uint8List? _imageBytes; // variable pour stocker l'image sélectionnée
  File? _videoFile; // variable pour stocker la vidéo sélectionnée
  File? _pdfFile; // variable pour stocker le fichier PDF sélectionné

  _AddValueCoursState({required this.index});

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        return _buildAddSystEducDialog();
      case 1:
        return _buildAddSousSystEducDialog();
      case 2:
        return _buildAddCycleDialog();
      case 3:
        return _buildAddNiveauDialog();
      case 4:
        return _buildAddMatiereDialog();
      case 5:
        return _buildAddChapitreDialog();
      case 6:
        return _buildAddLeconDialog();
      default:
        return SizedBox.shrink();
    }
  }

  Widget _buildAddSystEducDialog() {
    return AlertDialog(
      title: Text('Ajouter un système éducatif'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // TODO: Ajouter les champs pour l'ajout d'un système éducatif
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
                decoration: InputDecoration(labelText: 'Description'),
                onSaved: (value) => _description = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un prénom';
                  }
                  return null;
                },
              ),
        ],
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
            // TODO: Enregistrer les informations saisies pour un système éducatif
            Navigator.of(context).pop();
          },
          child: Text('Enregistrer'),
        ),
      ],
    );
  }

  Widget _buildAddSousSystEducDialog() {
    return AlertDialog(
      title: Text('Ajouter un sous-système éducatif'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // TODO: Ajouter les champs pour l'ajout d'un sous-système éducatif
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
                decoration: InputDecoration(labelText: 'Description'),
                onSaved: (value) => _description = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un prénom';
                  }
                  return null;
                },
              ),
        ],
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
            // TODO: Enregistrer les informations saisies pour un sous-système éducatif
            Navigator.of(context).pop();
          },
          child: Text('Enregistrer'),
        ),
      ],
    );
  }

  Widget _buildAddCycleDialog() {
    return AlertDialog(
      title: Text('Ajouter un cycle'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // TODO: Ajouter les champs pour l'ajout d'un cycle
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
                decoration: InputDecoration(labelText: 'Description'),
                onSaved: (value) => _description = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un prénom';
                  }
                  return null;
                },
              ),
        ],
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
            // TODO: Enregistrer les informations saisies pour un cycle
            Navigator.of(context).pop();
          },
          child: Text('Enregistrer'),
        ),
      ],
    );
  }

  Widget _buildAddNiveauDialog() {
    return AlertDialog(
      title: Text('Ajouter un niveau'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // TODO: Ajouter les champs pour l'ajout d'un niveau
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
                decoration: InputDecoration(labelText: 'Description'),
                onSaved: (value) => _description = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un prénom';
                  }
                  return null;
                },
              ),
        ],
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
            // TODO: Enregistrer les informations saisies pour un niveau
            Navigator.of(context).pop();
          },
          child: Text('Enregistrer'),
        ),
      ],
    );
  }

  Widget _buildAddMatiereDialog() {
    return AlertDialog(
      title: Text('Ajouter une matière'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // TODO: Ajouter les champs pour l'ajout d'une matière
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
                decoration: InputDecoration(labelText: 'Description'),
                onSaved: (value) => _description = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un prénom';
                  }
                  return null;
                },
              ),
        ],
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
            // TODO: Enregistrer les informations saisies pour une matière
            Navigator.of(context).pop();
          },
          child: Text('Enregistrer'),
        ),
    
      ],
    );
     }

  Widget _buildAddChapitreDialog() {
    return AlertDialog(
      title: Text('Ajouter un chapitre'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // TODO: Ajouter les champs pour l'ajout d'un chapitre
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
                decoration: InputDecoration(labelText: 'Description'),
                onSaved: (value) => _description = value,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un prénom';
                  }
                  return null;
                },
              ),
        ],
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
            // TODO: Enregistrer les informations saisies pour un chapitre
            Navigator.of(context).pop();
          },
          child: Text('Enregistrer'),
        ),
      ],
    );
  }

  Widget _buildAddLeconDialog() {
    return AlertDialog(
      title: Text('Ajouter une leçon'),
      contentPadding: EdgeInsets.fromLTRB(100.0, 100.0, 100.0, 100.0),// Spécifie une marge intérieure plus grande
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Champ pour ajouter le titre de la leçon
          TextField(
            decoration: InputDecoration(hintText: 'Titre de la leçon'),
          ),
          // Bouton pour ajouter une image
         InkWell(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Ajouter une image',
        style: TextStyle(fontSize: 40.0), // Augmente la taille de la police
      ),
      _imageBytes != null
          ? Image.memory(
              _imageBytes!,
              height: 50,
              width: 50,
            )
          : Icon(
              Icons.add_a_photo,
              size: 40.0, // Augmente la taille de l'icône
            ),
    ],
  ),
  onTap: () {
    // Ouvrir la galerie d'images
    _pickImage();
  },
),
          // Bouton pour ajouter une vidéo
          InkWell(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Ajouter une vidéo',
        style: TextStyle(fontSize: 40.0), // Augmente la taille de la police
      ),
      _videoFile != null
          ? Icon(
              Icons.play_arrow,
              size: 40.0, // Augmente la taille de l'icône
            )
          : Icon(
              Icons.video_library,
              size: 40.0, // Augmente la taille de l'icône
            ),
    ],
  ),
  onTap: () {
    // Ouvrir la galerie de vidéos
    _pickVideo();
  },
),
          // Bouton pour ajouter un fichier PDF
          InkWell(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Ajouter un fichier PDF',
        style: TextStyle(fontSize: 40.0), // Augmente la taille de la police
      ),
      _pdfFile != null
          ? Icon(
              Icons.insert_drive_file,
              size: 20.0, // Augmente la taille de l'icône
            )
          : Icon(
              Icons.file_copy,
              size: 40.0, // Augmente la taille de l'icône
            ),
    ],
  ),
  onTap: () {
    // Ouvrir les fichiers PDF
    _pickPdf();
  },
),
        ],
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
            // TODO: Enregistrer les informations saisies pour une leçon
            Navigator.of(context).pop();
          },
          child: Text('Enregistrer'),
        ),
      ],
    );
  }

  

Future<void> _pickImage() async {
  final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
  if (pickedFile != null) {
    final bytes = await pickedFile.readAsBytes();
    setState(() {
      _imageBytes = bytes;
    });
  }
}

  Future<void> _pickVideo() async {
    final pickedFile = await ImagePicker().pickVideo(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _videoFile = File(pickedFile.path);
      });
    }
  }

  Future<void> _pickPdf() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (result != null) {
      File file = File(result.files.single.path!);

      // Enregistrer le fichier dans le dossier local
    String folderPath = 'C:/Users/dell/Desktop/POO2/fichierRecu';
    File newFile = await savePdfToLocalFolder(file, folderPath);

      // Enregistrer le fichier sur le serveur WAMPs
      var request = http.MultipartRequest('POST', Uri.parse('http://localhost/upload.php'));
      request.files.add(await http.MultipartFile.fromPath('pdf', file.path));
      var response = await request.send();

      // Vérifier que le fichier a été enregistré avec succès
      if (response.statusCode == 200) {
        print('Le fichier a été enregistré avec succès');
        // Récupérer le nom du fichier et le chemin d'accès
        String fileName = response.headers['filename']!;
        String filePath = 'http://localhost/files/$fileName';

        // Stocker le nom du fichier et le chemin d'accès dans la base de données MySQL
        savePdfInfo(fileName, filePath);
      } else {
        print('Une erreur est survenue lors de l\'enregistrement du fichier');
      }

      setState(() {
        _pdfFile = newFile;
      });
    }// Connexion à la base de données MySQL
    // Enregistrement du nom du fichier et du chemin d'accès dans la table correspondante
  }



  void savePdfInfo(String fileName, String filePath) {

    Future<http.Response> savePdfInfo(String fileName, String filePath) async {
  // Créer l'URI pour l'API de la base de données
  var uri = Uri.parse('http://localhost:8080/Pdf/createPdf');

  // Headers de la requête
  Map<String, String> headers = {'Content-Type': 'application/json'};

  // Corps de la requête
  Map<String, dynamic> body = {
    'nom': fileName,
    'cheminAcces': filePath,
  };

  // Envoi de la requête POST à l'API
  try {
    http.Response response = await http.post(
      uri,
      headers: headers,
      body: json.encode(body),
    );
    return response;
  } catch (error) {
    print('Erreur lors de l\'enregistrement du fichier PDF : $error');
    throw error;
  }
}
    // Connexion à la base de données MySQL
    // Enregistrement du nom du fichier et du chemin d'accès dans la table correspondante
  }



Future<File> savePdfToLocalFolder(File pdfFile, String folderPath) async {
  // Vérifier si le dossier existe, sinon le créer
  final folder = Directory(folderPath);
  if (!folder.existsSync()) {
    folder.createSync(recursive: true);
  }

  // Construire le chemin complet du fichier PDF
  final fileName = pdfFile.path.split('/').last;
  final filePath = '$folderPath/$fileName';

  // Copier le fichier PDF dans le dossier local
  final newFile = await pdfFile.copy(filePath);

  return newFile;
}


}

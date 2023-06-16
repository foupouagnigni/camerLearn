import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Service {
  // on crée la méthode pour sauvegarder l'utilisateur
  Future<http.Response> saveAdmin(String email, String password) async {
    // create uri
    var uri = Uri.parse("http://localhost:8080/admin/create");

    // headers
    Map<String, String> headers = {'Content-Type': 'application/json'};

    // body
    Map data = {
      'email': email,
      'mp': password
    };


//convert the above data into json

    var body = json.encode(data);

    
    var response = await http.post(uri, headers: headers, body: body);

    print("${response.body}");

    return response;
  }
}
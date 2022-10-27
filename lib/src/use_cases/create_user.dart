import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:dark_notes/src/entities/entities.dart';

class CreateUserParams {
  final String email;
  String name;

  CreateUserParams({
    required this.email,
    this.name = '',
  });
}

Future<User> createUser(CreateUserParams params) async {
  var postUrl = Uri.https(dotenv.env['API_BASE_URL'] as String, 'users');

  var response = await http.post(postUrl, body: {
    'name': params.name,
    'email': params.email
  });
  
  return jsonDecode(response.body);
}
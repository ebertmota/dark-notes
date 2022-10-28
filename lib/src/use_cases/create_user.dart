import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../entities/entities.dart';

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
  
  final json = jsonDecode(response.body);
  return User.fromJson(json);
}
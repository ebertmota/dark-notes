import 'dart:convert';
import 'package:dark_notes/src/errors/errors.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:dark_notes/src/entities/entities.dart';

Future<User> loadUserByEmail(String email) async {
  var url = Uri.https(
    dotenv.env['API_BASE_URL']!, 
    '/users/email/${Uri.encodeFull(email)}'
  );

  var response = await http.get(url);
  final json = jsonDecode(response.body);

  if (response.statusCode == 400) {
    throw UserError.notFound;
  }

  return User.fromJson(json);
}
import 'dart:convert';
import '../entities/entities.dart';
import 'package:dark_notes/src/helpers/api.dart';

class CreateUserParams {
  final String email;
  String name;

  CreateUserParams({
    required this.email,
    this.name = '',
  });
}

Future<User> createUser(CreateUserParams params) async {
  var response = await httpClient
      .post('/users', data: {'name': params.name, 'email': params.email});

  final json = jsonDecode(response.data);
  return User.fromJson(json);
}

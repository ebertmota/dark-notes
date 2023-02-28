import 'dart:convert';
import 'package:dark_notes/src/errors/errors.dart';
import 'package:dark_notes/src/entities/entities.dart';
import 'package:dark_notes/src/helpers/api.dart';
import 'package:dio/dio.dart';

Future<User> loadUserByEmail(String email) async {
  try {
    var response =
        await httpClient.get('/users/email/${Uri.encodeFull(email)}');
    final json = jsonDecode(response.data);

    return User.fromJson(json);
  } on DioError catch (error) {
    if (error.response?.statusCode == 400) {
      throw UserError.notFound;
    } else {
      rethrow;
    }
  }
}

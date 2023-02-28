import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final String _baseUrl = dotenv.env['API_BASE_URL']!;
final options = BaseOptions(baseUrl: _baseUrl);
final httpClient = Dio(options);

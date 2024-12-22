import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  ApiService(this._dio);
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    try {
      final response = await _dio.get('$_baseUrl$endpoint');
      return response.data;
    } catch (e) {
      log('Error: $e');
      return {};
    }
  }
}

import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    try {
      final response = await _dio.get('$_baseUrl$endpoint');
      return response.data;
    } catch (e) {
      log('Error: $e');
      return {};
    }
  }

  Future<Response?> getRequest(String url) async {
    try {
      final response = await _dio.get(url);
      return response;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }

  Future<Response?> postRequest(String url, Map<String, dynamic> data) async {
    try {
      final response = await _dio.post(url, data: data);
      return response;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }

  Future<Response?> putRequest(String url, Map<String, dynamic> data) async {
    try {
      final response = await _dio.put(url, data: data);
      return response;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }

  Future<Response?> deleteRequest(String url) async {
    try {
      final response = await _dio.delete(url);
      return response;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}

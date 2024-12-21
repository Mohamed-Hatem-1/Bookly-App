import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
  factory ServerFailure.fromDioException(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout) {
      return ServerFailure('Connection timeout');
    }
    if (e.type == DioExceptionType.sendTimeout) {
      return ServerFailure('Send timeout');
    }
    if (e.type == DioExceptionType.receiveTimeout) {
      return ServerFailure('Receive timeout');
    }
    if (e.type == DioExceptionType.badCertificate) {
      return ServerFailure('Bad certificate');
    }
    if (e.type == DioExceptionType.badResponse) {
      return ServerFailure.fromResponse(
          e.response!.data, e.response!.statusCode!);
    }
    if (e.type == DioExceptionType.cancel) {
      return ServerFailure('Request cancelled');
    }
    if (e.type == DioExceptionType.connectionError) {
      return ServerFailure('Connection error');
    }
    if (e.type == DioExceptionType.unknown) {
      return ServerFailure('Unknown error, please try again later');
    }
    return ServerFailure('Unknown error, please try again later');
  }

  factory ServerFailure.fromResponse(dynamic response, int statusCode) {
    if (statusCode == 400) {
      return ServerFailure('Bad request');
    }
    if (statusCode == 401) {
      return ServerFailure('Unauthorized');
    }
    if (statusCode == 403) {
      return ServerFailure('Forbidden');
    }
    if (statusCode == 404) {
      return ServerFailure('Not found');
    }
    if (statusCode == 500) {
      return ServerFailure('Internal server error, please try again later');
    }
    return ServerFailure(response['error']['message']);
  }
}

class CacheFailure extends Failure {
  CacheFailure(super.message);
}

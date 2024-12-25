import 'package:bookly/core/network/api_service.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/search/data/repos/search_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  // Register your services here
  serviceLocator.registerSingleton<ApiService>(ApiService(Dio()));

  // serviceLocator.registerSingleton<HomeRepoImpl>(
  //     HomeRepoImpl(serviceLocator<ApiService>()));

  serviceLocator.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(serviceLocator.get<ApiService>()));

  serviceLocator.registerSingleton<SearchRepoImpl>(
      SearchRepoImpl(serviceLocator.get<ApiService>()));
}

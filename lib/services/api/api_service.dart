import 'package:demo_mvvm/infrastructure/constants.dart';
import 'package:dio/dio.dart';

class ApiService {
  Dio? dio;

  ApiService() {
    dio = Dio(BaseOptions(
      baseUrl: '',
      receiveTimeout: Constants.timeOut,
      connectTimeout: Constants.timeOut,
      sendTimeout: Constants.timeOut,
    ));
  }
}

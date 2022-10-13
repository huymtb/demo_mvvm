import 'package:demo_mvvm/infrastructure/constants.dart';
import 'package:demo_mvvm/models/login_result_model.dart';
import 'package:demo_mvvm/services/api/api_service.dart';

class AuthRepository {
  final ApiService _apiService = ApiService();

  Future<LoginResultModel?> login(String email, String password) async {
    /// Delay 2 seconds then checking the data
    /// Do not call real API
    await Future.delayed(const Duration(milliseconds: Constants.timeDelay));
    if (email == 'hello@example.com' && password == '123456') {
      return LoginResultModel(code: 200);
    } else {
      return LoginResultModel(
          code: 201,
          errorMessage: 'Incorrect email or password.\nPlease try again');
    }
    /*Response response = await _apiService.dio!
        .post('base_url', data: {'email': email, 'password': password});*/
  }
}

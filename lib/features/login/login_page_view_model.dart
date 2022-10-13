import 'package:demo_mvvm/infrastructure/utils.dart';
import 'package:demo_mvvm/models/login_result_model.dart';
import 'package:demo_mvvm/services/api/repositories/auth_repository.dart';
import 'package:flutter/material.dart';

class LoginPageViewModel extends ChangeNotifier {
  final AuthRepository _authRepository = AuthRepository();

  late LoginResultModel loginResult;

  String email = '';
  String password = '';
  bool isEmailValidate = false;
  bool isPasswordValidate = false;
  bool isLoading = false;

  Future<String> login() async {
    setLoading(true);
    final LoginResultModel? result =
        await _authRepository.login(email, password);
    setLoading(false);
    if (result?.code == 200) {
      return '';
    } else {
      return result?.errorMessage ?? '';
    }
  }

  void onEmailChanged(String email) {
    isEmailValidate = validateEmail(email);
    this.email = email;
    notifyListeners();
  }

  void onPasswordChanged(String password) {
    isPasswordValidate = password.length >= 6;
    this.password = password;
    notifyListeners();
  }

  void setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }
}

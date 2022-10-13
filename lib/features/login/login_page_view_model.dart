import 'package:demo_mvvm/generated/l10n.dart';
import 'package:demo_mvvm/infrastructure/utils.dart';
import 'package:demo_mvvm/models/login_result_model.dart';
import 'package:demo_mvvm/services/api/repositories/auth_repository.dart';
import 'package:demo_mvvm/widgets/app_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPageViewModel extends ChangeNotifier {
  final AuthRepository _authRepository = AuthRepository();

  late LoginResultModel loginResult;

  String email = '';
  String password = '';
  bool isEmailValidate = false;
  bool isPasswordValidate = false;
  bool isLoading = false;

  Future<void> login(BuildContext context) async {
    setLoading(true);
    hideKeyBoard(context);
    await _authRepository.login(email, password).then((value) {
      if (value?.code == 200) {
        showDialog(
            context: context,
            builder: (BuildContext ctx) {
              return AppDialog(
                title: S.current.login_success,
              );
            });
      } else {
        showDialog(
            context: context,
            builder: (BuildContext ctx) {
              return AppDialog(
                title: S.current.login_failed,
                message: value?.errorMessage ?? '',
              );
            });
      }
    });
    setLoading(false);
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
